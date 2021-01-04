//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

//Imports that are mine

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spin Circle Bottom Navigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SpinCircleBottomBarHolder(
        child: Container(
          color: Colors.grey.withAlpha(100),
          child: Center(
            child: Text('Spin Circle Bottom Navigation Bar'),
          ),
        ),
        bottomNavigationBar: SCBottomBarDetails(
          items: <SCBottomBarItem>[
            SCBottomBarItem(icon: Icons.verified_user, title: 'Users', onPressed: (){}),
            SCBottomBarItem(icon: Icons.supervised_user_circle, title: 'Details', onPressed: (){}),
            SCBottomBarItem(icon: Icons.notifications, title: 'Notifications', onPressed: (){}),
            SCBottomBarItem(icon: Icons.details, title: 'New Data', onPressed: (){}),
          ],
          circleItems: <SCItem>[
            SCItem(icon: Icon(Icons.add), onPressed: (){}),
            SCItem(icon: Icon(Icons.print), onPressed: (){}),
            SCItem(icon: Icon(Icons.map), onPressed: (){}),
          ],
          circleColors: [
            Colors.white,
            Colors.orange,
            Colors.redAccent
          ],
          actionButtonDetails: SCActionButtonDetails(
            color: Colors.redAccent,
            icon: Icon(Icons.expand_less),
            elevation: 0.0
          ),
          iconTheme: IconThemeData(color: Colors.black45),
          activeIconTheme: IconThemeData(color: Colors.orange),
          titleStyle: TextStyle(
            color: Colors.black45,
            fontSize: 12.0
          ),
          activeTitleStyle: TextStyle(
            color: Colors.orange,
            fontSize: 12.0,
            fontWeight: FontWeight.bold
          ),
          backgroundColor: Colors.white,
          bnbHeight: 80.0,
        ),
      )
    );
  }
}