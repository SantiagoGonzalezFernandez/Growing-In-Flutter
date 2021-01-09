//Imports that are not mine
import 'dart:async';
import 'package:flutter/material.dart';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/StreamBuilderExample/src/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final colorStream = StreamController<Color>();

  int counter = -1;
  final List<Color> colorList = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.green
  ];

  @override
  void dispose() { 
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(!snapshot.hasData) {
              return LoadingWidget();
            }
            if(snapshot.connectionState == ConnectionState.done) {
              return Text('Fin del Stream (:');
            }
            return Container(
              height: 150.0,
              width: 150.0,
              color: snapshot.data,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: () {
          counter++;
          if(counter < colorList.length){
            colorStream.sink.add(colorList[counter]);
          } else {
            colorStream.close();
          }
        },
      ),
    );
  }
}

