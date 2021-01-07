//Imports that are not mine
import 'package:flutter/material.dart';
import 'dart:math';

//Imports that are mine
//Widgets
import 'package:growing_in_flutter/AnimatedLoginUI/src/widgets/custom_clipper_widget.dart';

class WaveWidget extends StatefulWidget {

  final Size size;
  final double yOffset;
  final Color color;

  WaveWidget({
    Key key, 
    this.size, 
    this.yOffset, 
    this.color
  }) : super(key: key);

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget> with TickerProviderStateMixin {

  AnimationController animationController;

  List<Offset> wavePoints = [];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000)
    )..addListener(() {
      wavePoints.clear();
      final double waveSpeed  = animationController.value * 1080.0;
      final double fullSphere = animationController.value * pi * 2.0;
      final double normalizer = cos(fullSphere);
      final double waveWidth  = pi / 270.0;
      final double waveHeight = 20.0;
      for (var i = 0; i <= widget.size.width.toInt(); ++i) {
        double calculation = sin((waveSpeed - i) * waveWidth);
        wavePoints.add(
          Offset(
            i.toDouble(), 
            calculation * waveHeight * normalizer + widget.yOffset
          )
        );
      }
    });
    animationController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _ ) {
        return ClipPath(
          clipper: CustomClipperWidget(
            waveList: wavePoints
          ),
          child: Container(
            width: widget.size.width,
            height: widget.size.height,
            color: widget.color,
          ),
        );
      },
    );
  }
}