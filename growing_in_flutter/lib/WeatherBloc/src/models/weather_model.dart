class WeatherModel {

  final temprature;
  final pressure;
  final humidity;
  final maxTemprature;
  final minTemprature;

  WeatherModel(
    this.temprature, 
    this.pressure, 
    this.humidity, 
    this.maxTemprature, 
    this.minTemprature
  );

  double get getTemprature    => temprature - 272.5;
  double get getMaxTemprature => maxTemprature - 272.5;
  double get getMinTemprature => minTemprature - 272.5;

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      json["temp"],
      json["pressure"],
      json["humidity"],
      json["temp_max"],
      json["temp_min"]
    );
  }
  
}