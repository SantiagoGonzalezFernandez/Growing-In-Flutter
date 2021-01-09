//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Blocs
import 'package:growing_in_flutter/BlocYieldAsyncStreams/src/blocs/productos_bloc.dart';

class HomePage extends StatelessWidget {

  final productosBloc = ProductosBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: StreamBuilder(
          stream: productosBloc.productosContadorStream,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot){
            return Text('Productos (${snapshot.data ?? 0})');
          },
        ),
      ),
      body: StreamBuilder(
        stream: productosBloc.getProductos,
        builder: (context, AsyncSnapshot<List<String>> snapshot) {
          final productos = snapshot.data ?? [];
          return ListView.builder(
            itemCount: productos.length,
            itemBuilder: ( _ , index) {
              return ListTile(
                title: Text(productos[index]),
              );
            },
          );
        },
      )
    );
  }
} 