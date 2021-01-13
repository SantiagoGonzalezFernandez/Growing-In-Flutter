//Imports that are not mine
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/WeatherBloc/src/blocs/weather_bloc/weather_bloc.dart';
import 'package:growing_in_flutter/WeatherBloc/src/pages/show_weather_page.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    TextEditingController cityController = TextEditingController(); 

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: FlareActor(
                    'WeatherBloc/assets/animations/WorldSpin.flr',
                    fit: BoxFit.contain,
                    animation: 'roll',
                  ),
                  height: 300.0,
                  width: 300.0,
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if(state is WeatherIsNotSearchedState){
                    return Container(
                      padding: EdgeInsets.only(
                        left: 32.0,
                        right: 32.0
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Search Weather',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70
                            ),
                          ),
                          Text(
                            'Instanly',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.white70
                            ),
                          ),
                          SizedBox(height: 24.0),
                          TextFormField(
                            controller: cityController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, color: Colors.white70),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Colors.white70,
                                  style: BorderStyle.solid
                                )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  style: BorderStyle.solid
                                )
                              ),
                              hintText: 'City Name',
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              onPressed: () {
                                BlocProvider.of<WeatherBloc>(context).add(
                                  FetchWeatherEvent(cityController.text)
                                );
                              },
                              color: Colors.lightBlue,
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16.0
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  } else if(state is WeatherIsLoadingState){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if(state is WeatherIsLoadedState){
                    return ShowWeatherPage(
                      weatherModel: state.getWeather,
                      city: cityController.text,
                    );
                  } else {
                    return Text(
                      'Error',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      )
    );
  }
}