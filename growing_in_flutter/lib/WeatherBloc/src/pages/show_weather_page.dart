//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:growing_in_flutter/WeatherBloc/src/blocs/weather_bloc/weather_bloc.dart';

//Imports that are mine
//Models
import 'package:growing_in_flutter/WeatherBloc/src/models/weather_model.dart';

class ShowWeatherPage extends StatelessWidget {

  final WeatherModel weatherModel;
  final String city;

  const ShowWeatherPage({
    Key key, 
    this.weatherModel, 
    this.city
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 32.0,
        left: 32.0,
        top: 10.0
      ),
      child: Column(
        children: [
          Text(
            city,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            weatherModel.getTemprature.round().toString() + 'C',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 50.0
            ),
          ),
          Text(
            'Temprature',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14.0
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    weatherModel.getMinTemprature.round().toString() + 'C',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0
                    ),
                  ),
                  Text(
                    'Min Temprature',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    weatherModel.getMaxTemprature.round().toString() + 'C',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0
                    ),
                  ),
                  Text(
                    'Max Temprature',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            height: 50.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              onPressed: () {
                BlocProvider.of<WeatherBloc>(context).add(ResetWeatherEvent());
              },
              color: Colors.lightBlue,
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.0
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}