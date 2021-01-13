//Imports that are not mine
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:growing_in_flutter/WeatherBloc/src/models/weather_model.dart';
import 'package:meta/meta.dart';

import 'package:flutter/material.dart';

//Imports that are mine
//Services
import 'package:growing_in_flutter/WeatherBloc/src/services/weather_service.dart';

//Parts
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  WeatherService weatherService;

  WeatherBloc(
    this.weatherService
  ) : super(WeatherIsNotSearchedState());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if(event is FetchWeatherEvent){
      yield WeatherIsLoadingState();

      try {
        WeatherModel weatherModel = await weatherService.getWeather(event.city);
        yield WeatherIsLoadedState(weatherModel);
      } catch (_) {
        yield WeatherIsNotLoadedState();
      }
    } else if (event is ResetWeatherEvent) {
      yield WeatherIsNotSearchedState();
    }
  }
}
