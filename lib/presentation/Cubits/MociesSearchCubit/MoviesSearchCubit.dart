import 'package:bloc/bloc.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';

import 'MoviesSearchState.dart';

class MoviesSearchCubit extends Cubit<MoviesSearchrState> {
  final HomeRepo homeRepo;

  MoviesSearchCubit(this.homeRepo) : super(MoviesSearchInitial());

  Future<void> fetchSearchMovies({required String query}) async {
    emit(MoviesSearchLoading());
    var result = await homeRepo.fetchSearchMovies(query: query);
    result.fold(
      ifLeft: (falier) {
        emit(MoviesSearchFalier(falier.errorMessage));
      },
      ifRight: (movies) {
        // تنظيف البيانات عشان مفيش حاجة تعمل error
        final safeMovies = movies
            .where((m) => (m.title ?? "").isNotEmpty)
            .toList();
        emit(MoviesSearchSuccess(safeMovies));
      },
    );
  }
}
