//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine
//Styles
import 'package:growing_in_flutter/TheBasicsWeb/src/styles/text_styles.dart';

class CourseDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) { 

        TextAlign textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;

        return Container(
          width: 600.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(height: 30.0),
              Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                style: descriptionTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      } 
    );
  }
}