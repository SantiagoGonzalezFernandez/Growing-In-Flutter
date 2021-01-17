//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine

class CourseDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) { 

        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;

        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 50.0 : 80.0;

        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 16.0 : 21.0;

        return Container(
          width: 600.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                ),
                textAlign: textAlignment,
              ),
              SizedBox(height: 30.0),
              Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7
                ),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      } 
    );
  }
}