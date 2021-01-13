//Part of
part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable{}

class WeatherIsNotSearchedState extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherIsLoadingState extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherIsLoadedState extends WeatherState {
  final WeatherModel weather;

  WeatherIsLoadedState(this.weather);

  WeatherModel get getWeather => weather;

  @override
  List<Object> get props => [weather];
}

class WeatherIsNotLoadedState extends WeatherState {
  @override
  List<Object> get props => [];
}
