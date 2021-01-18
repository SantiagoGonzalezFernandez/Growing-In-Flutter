//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/FlutterDemoBloc/src/blocs/second_bloc/second_bloc.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  SecondBloc _secondBloc = SecondBloc();

  @override
  void initState() {
    super.initState();
    _secondBloc.sendEvent.add(FetchEvent());
  }

  @override
  void dispose() {
    _secondBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Demo Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Now counter is:'),
            StreamBuilder<int>(
              stream: _secondBloc.counterStream,
              builder: (context, snapshot) => Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.headline4
              ),
            )
          ],
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'Button1',
            onPressed: () {
              _secondBloc.sendEvent.add(ClearEvent());
            },
            tooltip: 'Clear',
            child: Icon(Icons.clear),
          ),
          SizedBox(width: 8.0),
          FloatingActionButton(
            heroTag: 'Button2',
            onPressed: () {
              _secondBloc.sendEvent.add(DoubleEvent());
            },
            tooltip: 'Increment',
            child: Icon(Icons.trending_up),
          ),
        ],
      ),
    );
  }
}