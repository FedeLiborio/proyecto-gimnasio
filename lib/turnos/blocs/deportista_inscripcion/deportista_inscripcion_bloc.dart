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
      yield* mapCancelarTurnoToState(event);
    }
  }

  Stream<DeportistaInscripcionState> mapInscribirseTurnoToState(InscribirseTurno event) async*{
    yield DeportistaInscripcionLoading();
    try{
      await Future.delayed(const Duration(seconds: 1));
      yield DeportistaAnotado();
    }catch (e){
      yield DeportistaInscripcionFailure(error: e.toString());
    }
  }

  Stream<DeportistaInscripcionState> mapCancelarTurnoToState(CancelarTurno event) async*{
    yield DeportistaInscripcionLoading();
    try{
      await Future.delayed(const Duration(seconds: 1));
      yield DeportistaNoAnotado();
    }catch (e){
      yield DeportistaInscripcionFailure(error: e.toString());
    }
  }
}