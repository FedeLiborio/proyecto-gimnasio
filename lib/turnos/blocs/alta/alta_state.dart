import 'package:equatable/equatable.dart';

abstract class AltaState {
  const AltaState();

  @override
  List<Object> get props => [];
}

class AltaInitial extends AltaState{}

class AltaLoading extends AltaState{}

class AltaSuccess extends AltaState{}

class AltaFailure extends AltaState{
  final String error;

  AltaFailure({required this.error});

  @override
  List<Object> get props => [error];
}