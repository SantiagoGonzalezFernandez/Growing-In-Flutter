//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:growing_in_flutter/FlutterDemoBloc/src/blocs/counter_bloc/counter_bloc.dart';
import 'package:growing_in_flutter/FlutterDemoBloc/src/pages/second_page.dart';

//Imports that are mine

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  CounterBloc _counterBloc = CounterBloc();

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Demo Bloc'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                )
              ).then(( _ ) {
                _counterBloc.sendEvent.add(FetchCounterEvent());
              });
            }, 
            child: Icon(
              Icons.trending_up,
              color: Colors.white,
            )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            StreamBuilder<int>(
              stream: _counterBloc.counterStream,
              initialData: 0,
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
              _counterBloc.sendEvent.add(ClearCounterEvent());
            },
            tooltip: 'Clear',
            child: Icon(Icons.clear),
          ),
          SizedBox(width: 8.0),
          FloatingActionButton(
            heroTag: 'Button2',
            onPressed: () {
              _counterBloc.sendEvent.add(IncrementCounterEvent());
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}