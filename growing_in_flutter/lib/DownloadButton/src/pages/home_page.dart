//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/DownloadButton/src/widgets/download_button_animation.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DownloadButtonAnimation(
                primaryColor: Color.fromRGBO(57, 92, 249, 1),
                darkPrimaryColor: Color.fromRGBO(44, 78, 233, 1),
              ),
              SizedBox(height: 20.0),
              DownloadButtonAnimation(
                primaryColor: Colors.yellow[700],
                darkPrimaryColor: Colors.yellow[800],
              ),
              SizedBox(height: 20.0),
              DownloadButtonAnimation(
                primaryColor: Colors.green[400],
                darkPrimaryColor: Colors.green[600],
              ),
              SizedBox(height: 20.0),
              DownloadButtonAnimation(
                primaryColor: Colors.red[700],
                darkPrimaryColor: Colors.red[800],
              ),
            ],
          ),
        )
      ),
    );
  }
}