import 'package:equatable/equatable.dart';

abstract class AltaEvent {
  @override
  List<Object> get props => [];
}

class DarseAltaButtonPressed extends AltaEvent{
  String id;

  DarseAltaButtonPressed({required this.id});
  
  @override
  List<Object> get props => [id];
}