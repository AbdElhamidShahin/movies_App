import 'package:bloc/bloc.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';
import 'package:movies_app/presentation/Cubits/MoviesPopularCubit/MoviesPopularState.dart';

class MoviesPopularCubit extends Cubit<MoviesPopularState> {
  final HomeRepo homeRepo;

  MoviesPopularCubit(this.homeRepo) : super(MoviesPopularInitial());
  Future<void> fetchPopularMovies() async {
    emit(MoviesPopularLoading());
    var result = await homeRepo.fetchPopularMovies();
    result.fold(
      ifLeft: (falier) {
        emit(MoviesPopularFalier(falier.errorMessage));
      },
      ifRight: (movies) {
        emit(MoviesPopularSuccess(movies));
      },
    );
  }
}
