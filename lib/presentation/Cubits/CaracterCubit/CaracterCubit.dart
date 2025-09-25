import 'package:bloc/bloc.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';
import 'package:movies_app/presentation/Cubits/CaracterCubit/CaracterState.dart';

class CaracterCubit extends Cubit<CaracterState> {
  final HomeRepo homeRepo;

  CaracterCubit(this.homeRepo) : super(CaracterStateInitial());
  Future<void> fetchCaracterMovies(int movieId) async {
    emit(CaracterStateLoading());
    var result = await homeRepo.fetchCaracterMovies(movieId);
    result.fold(
      ifLeft: (falier) {
        emit(CaracterStateFalier(falier.errorMessage));
      },
      ifRight: (cast) {
        emit(CaracterStateSuccess(cast));
      },
    );
  }
}
