import 'package:flutter_bloc/flutter_bloc.dart';
import 'deportista_inscripcion_event.dart';
import 'deportista_inscripcion_state.dart';

class DeportistaInscripcionBloc extends Bloc<DeportistaInscripcionEvent, DeportistaInscripcionState>{
  DeportistaInscripcionBloc() 
    : super(DeportistaNoAnotado());

  @override
  Stream<DeportistaInscripcionState> mapEventToState(DeportistaInscripcionEvent event) async*{
    if (event is InscribirseTurno){
      yield* mapInscribirseTurnoToState(event);
    }else if(event is CancelarTurno){
      //yield
    }else if(event is EntrarEnColaTurno){

    }
  }

  Stream<DeportistaInscripcionState> mapInscribirseTurnoToState(InscribirseTurno event) async*{

  }
}