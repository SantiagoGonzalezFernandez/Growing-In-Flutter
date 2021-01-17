//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class BarrierWidget extends StatelessWidget {

  final size;

  BarrierWidget({
    Key key, 
    this.size
  }) : super(key: key); 


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: size,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          width: 10.0,
          color: Colors.green[800]
        ),
        borderRadius: BorderRadius.circular(15.0)
      ),
    );
  }
}