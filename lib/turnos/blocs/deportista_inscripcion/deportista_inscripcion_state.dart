import 'package:equatable/equatable.dart';

abstract class DeportistaInscripcionState {
  const DeportistaInscripcionState();

  @override
  List<Object> get props => [];
}

class DeportistaInscripcionInitial extends DeportistaInscripcionState{}

class DeportistaInscripcionLoading extends DeportistaInscripcionState{}

class DeportistaAnotado extends DeportistaInscripcionState{}

class DeportistaNoAnotado extends DeportistaInscripcionState{}

class DeportistaInscripcionFailure extends DeportistaInscripcionState{
  final String error;

  DeportistaInscripcionFailure({required this.error});

  @override
  List<Object> get props => [error];
}