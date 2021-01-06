//Imports that are not mine
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/AnimateDo/src/pages/twitter_page.dart';
import 'package:growing_in_flutter/AnimateDo/src/pages/notification_page.dart';

class OnePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
          child: Text('Animate Do'),
          duration: Duration(milliseconds: 500),
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => TwitterPage(), 
                )
              );
            },
          ),
          SlideInLeft(
            child: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                  context, 
                  CupertinoPageRoute(
                    builder: (context) => OnePage(), 
                  )
                );
              },
            ),
            from: 100.0,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              child: Icon(Icons.new_releases, color: Colors.blue, size: 40.0),
              delay: Duration(milliseconds: 1100),
            ),
            FadeInDown(
              child: Text('Titutlo', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200)),
              delay: Duration(milliseconds: 200),
            ),
            FadeInDown(
              child: Text('Soy un texto chico', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400)),
              delay: Duration(milliseconds: 800),
            ),
            FadeInLeft(
              child: Container(
                width: 220.0,
                height: 2.0,
                color: Colors.blue,
              ),
              delay: Duration(milliseconds: 1100),
            )
          ],
        ),
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => NotificationPage(), 
              )
            );
          },
        ),
      ),
    );
  }
}