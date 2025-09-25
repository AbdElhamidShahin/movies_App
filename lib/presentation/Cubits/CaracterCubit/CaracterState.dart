import 'package:movies_app/data/models/moviesModel/CastModel.dart';

abstract class CaracterState {}

class CaracterStateInitial extends CaracterState {}

class CaracterStateFalier extends CaracterState {
  final String errorMessage;

  CaracterStateFalier(this.errorMessage);
}

class CaracterStateSuccess extends CaracterState {
  final List<CastModel> cast;

  CaracterStateSuccess(this.cast);
}

class CaracterStateLoading extends CaracterState {}
