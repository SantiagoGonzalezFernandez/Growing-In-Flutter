//Part of
part of 'weather_bloc.dart'; 

@immutable
abstract class WeatherEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class FetchWeatherEvent extends WeatherEvent {
  final String city;

  FetchWeatherEvent(this.city);

  @override
  List<Object> get props => [city];
}

class ResetWeatherEvent extends WeatherEvent {
  @override
  List<Object> get props => [];
}
