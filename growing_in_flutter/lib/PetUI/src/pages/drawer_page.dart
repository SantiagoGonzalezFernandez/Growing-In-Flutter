//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Configuration
import 'package:growing_in_flutter/PetUI/src/configuration.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miroslava Savitskaya',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Active Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: drawerItems.map((item) => Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  children: [
                    Icon(
                      item['icon'],
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      item['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    )
                  ],
                ),
              )).toList()
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 2.0,
                  height: 20.0,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}