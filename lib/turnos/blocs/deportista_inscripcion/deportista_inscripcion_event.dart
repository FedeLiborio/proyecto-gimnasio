import 'package:equatable/equatable.dart';

abstract class DeportistaInscripcionEvent {
  @override
  List<Object> get props => [];
}

class InscribirseTurno extends DeportistaInscripcionEvent{
  String id;

  InscribirseTurno({required this.id}) ;
  
  @override
  List<Object> get props => [id];
}

class CancelarTurno extends DeportistaInscripcionEvent{
  String id;

  CancelarTurno({required this.id});
  
  @override
  List<Object> get props => [id];
}
