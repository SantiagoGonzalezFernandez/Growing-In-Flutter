//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/WeatherBloc/src/pages/search_page.dart';
//Blocs
import 'package:growing_in_flutter/WeatherBloc/src/blocs/weather_bloc/weather_bloc.dart' as bloc;
//Services
import 'package:growing_in_flutter/WeatherBloc/src/services/weather_service.dart';

class WeatherBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      title: 'Search Weather',
      home: BlocProvider(
        create: (context) => bloc.WeatherBloc(WeatherService()),
        child: SearchPage(),
      ),
    );
  }
}