
import 'dart:async';

import 'package:growing_in_flutter/FlutterDemoBloc/src/repositorys/counter_repository.dart';

abstract class SecondEvent {}

class DoubleEvent extends SecondEvent {}
class ClearEvent extends SecondEvent {}
class FetchEvent extends SecondEvent {}

class SecondBloc {

  CounterRepository counterRepository = CounterRepository();

  StreamController<SecondEvent> _input = StreamController();
  StreamController<int> _output = StreamController();

  Stream<int> get counterStream => _output.stream;
  StreamSink<SecondEvent> get sendEvent => _input.sink;

  SecondBloc() {
    _input.stream.listen(_onEvent);
  }

  dispose() {
    _input.close();
    _output.close();
  }

  void _onEvent(SecondEvent event) {
    if(event is DoubleEvent) {
      counterRepository.double();
    } else if(event is ClearEvent) {
      counterRepository.clear();
    }
    _output.add(counterRepository.get());
  }
}