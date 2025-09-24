import 'package:bloc/bloc.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';
import 'package:movies_app/presentation/Cubits/MoviesTopRetingCubit/MoviesTopRatingState.dart';

class MoviesTopRatingCubit extends Cubit<MoviesTopRatingState> {
  final HomeRepo homeRepo;

  MoviesTopRatingCubit(this.homeRepo) : super(MoviesTopRatingInitial());
  Future<void> fetchTopRatingMovies() async {
    emit(MoviesTopRatingLoading());
    var result = await homeRepo.fetchTopRatingMovies();
    return result.fold(
      ifLeft: (falier) {
        emit(MoviesTopRatingFalier(falier.errorMessage));
      },
      ifRight: (movies) {
        emit(MoviesTopRatingSuccess(movies));
      },
    );
  }
}
