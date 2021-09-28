import 'package:flutter_bloc/flutter_bloc.dart';
import 'alta_event.dart';
import 'alta_state.dart';

class AltaBloc extends Bloc<AltaEvent, AltaState>{

  AltaBloc() 
    : super(AltaInitial());

  @override
  Stream<AltaState> mapEventToState(AltaEvent event) async*{
    if (event is DarseAltaButtonPressed){
      yield* mapDarseAltaToState(event);
    }
  }

  Stream<AltaState> mapDarseAltaToState(DarseAltaButtonPressed event) async*{
    yield AltaLoading();
    try{
      await Future.delayed(Duration(seconds: 1));
      yield AltaSuccess();
    } catch (e){
      yield AltaFailure(error: e.toString());
    }
  }
  
}