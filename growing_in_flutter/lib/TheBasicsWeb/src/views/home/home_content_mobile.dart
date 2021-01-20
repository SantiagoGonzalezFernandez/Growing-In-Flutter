//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/call_to_action/call_to_action.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100.0),
        CallToAction(title: 'Join Course')
      ],
    );
  }
}