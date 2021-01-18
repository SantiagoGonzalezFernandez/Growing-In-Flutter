import 'dart:async';

import 'package:growing_in_flutter/FlutterDemoBloc/src/repositorys/counter_repository.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}
class ClearCounterEvent extends CounterEvent {}
class FetchCounterEvent extends CounterEvent {}

class CounterBloc {

  CounterRepository counterRepository = CounterRepository();

  StreamController<CounterEvent> _input = StreamController();
  StreamController<int> _output = StreamController();

  Stream<int> get counterStream => _output.stream;
  StreamSink<CounterEvent> get sendEvent => _input.sink;

  CounterBloc() {
    _input.stream.listen(_onEvent);
  } 

  void _onEvent(CounterEvent event) {
    if(event is IncrementCounterEvent) {
      counterRepository.increment();
    } else if(event is ClearCounterEvent) {
      counterRepository.clear();
    }

    _output.add(counterRepository.get());
  }

  void dispose(){
    _input.close();
    _output.close();
  }

}
