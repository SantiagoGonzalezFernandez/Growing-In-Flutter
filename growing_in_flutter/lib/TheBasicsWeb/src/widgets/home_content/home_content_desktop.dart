//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/call_to_action/call_to_action.dart';
import 'package:growing_in_flutter/TheBasicsWeb/src/widgets/course_details.dart';

class HomeContentDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction(
              title: 'Join Course',
            ),
          ),
        )
      ],
    );
  }
}