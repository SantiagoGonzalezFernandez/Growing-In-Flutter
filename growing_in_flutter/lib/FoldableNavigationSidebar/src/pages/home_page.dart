//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:swipedetector/swipedetector.dart';

//Imports that are mine
//Pages
import 'package:growing_in_flutter/FoldableNavigationSidebar/src/pages/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FSBStatus status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SwipeDetector(
          onSwipeRight: () {
            setState(() {
              status = FSBStatus.FSB_OPEN;
            });
          },
          onSwipeLeft: () {
            setState(() {
              status = FSBStatus.FSB_CLOSE;
            });
          },
          child: FoldableSidebarBuilder(
            status: status, 
            drawer: CustomDrawer(
              closeDrawer: () {
                setState(() {
                  status = FSBStatus.FSB_CLOSE;
                });
              },
            ),
            screenContents: Scaffold(
              backgroundColor: Colors.cyan,
              body: Center(
                child: Text('Foldable Navigation Sidebar'),
              )
            ),
            drawerBackgroundColor: Colors.cyan,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            setState(() {
              status = status == FSBStatus.FSB_OPEN?FSBStatus.FSB_CLOSE:FSBStatus.FSB_OPEN;
            });
          },
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({
    Key key, 
    this.closeDrawer
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.grey.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/3/31/HL365_Profielfoto.jpg',
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(height: 10.0),
                Text('Santiago Gonzalez')
              ],
            ),
          ),
          ListTile(
            title: Text('Your Profile'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
              closeDrawer();
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              debugPrint('Tapped settings');
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Payments'),
            leading: Icon(Icons.payment),
            onTap: () {
              debugPrint('Tapped Payments');
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
              debugPrint('Tapped Notifications');
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              debugPrint('Tapped Log Out');
            },
          ),
        ],
      ),
    );
  }
}