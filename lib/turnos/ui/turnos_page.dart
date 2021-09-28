import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/deportista_inscripcion/deportista_inscripcion.dart';

class TurnosPage extends StatelessWidget {
  const TurnosPage({ Key? key }) : super(key: key);

  Card cardTurno(String titulo){
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(titulo),
            subtitle: Text('Información del turno'),
            leading: Icon(Icons.check),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: null, child: Text('Anotarse'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _deportistaInscripcionBloc = BlocProvider.of<DeportistaInscripcionBloc>(context);

    return SafeArea(
      child: BlocBuilder<DeportistaInscripcionBloc, DeportistaInscripcionState>(
        builder: (context, state){
          if (state is DeportistaAnotado){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('Ya estas anotado a un torneo'),
                ElevatedButton(
                  onPressed: (){
                    _deportistaInscripcionBloc.add(CancelarTurno(id: "w"));
                  }, 
                  child: Text('Cancelar turno'),
                ),
              ],
            );
          }else if(state is DeportistaNoAnotado){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('No estás anotado a ningun turno'),
                ElevatedButton(
                  onPressed: (){
                    _deportistaInscripcionBloc.add(InscribirseTurno(id: "s"));
                  }, 
                  child: const Text('Anotarse'),
                ),
              ],
            );
          }else if(state is DeportistaInscripcionFailure){
            return Center(
              child: Text("Ocurrio un error. " + state.error),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
      ),
    );
  }

  /*/
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        cardTurno('Este es un turno'),
        
      ],
    );
  }
  */
  /*
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AltaBloc, AltaState>(
        builder: (context, state){
          if(state is AltaSuccess){
            print('devolver widget');
          }
          else if(state is AltaFailure){
            return Center(
              child: Text('Ocurrio un error.' + state.error),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
      ),
    );
  }*/
}