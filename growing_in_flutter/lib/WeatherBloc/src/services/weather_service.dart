//Imports that are not mine
import 'package:http/http.dart' as http;
import 'dart:convert';

//Imports that are mine
//Models
import 'package:growing_in_flutter/WeatherBloc/src/models/weather_model.dart';

class WeatherService{
  
  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get('http://api.openweathermap.org/data/2.5/weather?q=$city&APPID=60c5b588a4820c3c2e53c9b5afa5b531');
    
    if(result.statusCode != 200){
      throw Exception();
    }

    return parsedJson(result.body);
  }

  WeatherModel parsedJson(response){
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded['main'];

    return WeatherModel.fromJson(jsonWeather);
  }

}
