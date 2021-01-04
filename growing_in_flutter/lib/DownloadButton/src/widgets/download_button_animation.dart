//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class DownloadButtonAnimation extends StatefulWidget {

  final Color primaryColor;
  final Color darkPrimaryColor;

  DownloadButtonAnimation({
    Key key, 
    this.primaryColor, 
    this.darkPrimaryColor
  }) : super(key: key);

  @override
  _DownloadButtonAnimationState createState() => _DownloadButtonAnimationState();
}

class _DownloadButtonAnimationState extends State<DownloadButtonAnimation> with TickerProviderStateMixin {

  AnimationController _animationController;
  AnimationController _scaleAnimationController;
  AnimationController _fadeAnimationController;

  Animation<double> _animation;
  Animation<double> _scaleAnimation;
  Animation<double> _fadeAnimation;

  double buttonWidth = 200.0;
  double scale = 1.0;
  bool animationComplete = false;
  double barColorOpacity = 0.6;
  bool animationStart = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    _scaleAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    _fadeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400)
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: buttonWidth
    ).animate(_animationController)..addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        setState(() {
          animationComplete = true;
          barColorOpacity = 0.0;
        });
      }
    });

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05
    ).animate(_scaleAnimationController)..addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _scaleAnimationController.reverse();
        _fadeAnimationController.forward();
        _animationController.forward();
      }
    });

    _fadeAnimation = Tween<double>(
      begin: 50.0,
      end: 0.0
    ).animate(_fadeAnimationController);
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
    _fadeAnimationController.dispose();
    _scaleAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _scaleAnimationController,
          builder: (context, child) => Transform.scale(
            scale: _scaleAnimation.value,
            child: InkWell(
              onTap: () {
                _scaleAnimationController.forward();
              },
              child: Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: widget.primaryColor,
                  borderRadius: BorderRadius.circular(3.0) 
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: (animationComplete == false) ? Text(
                          'Download',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ) : Icon(Icons.check, color: Colors.white),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _fadeAnimationController,
                      builder: (context, child) => Container(
                        width: _fadeAnimation.value,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: widget.darkPrimaryColor,
                          borderRadius: BorderRadius.circular(3.0) 
                        ),
                        child: Icon(Icons.arrow_downward, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ),
        AnimatedBuilder(
          animation: _animationController, 
          builder: (context, child) => Positioned(
            left: 0.0,
            top: 0.0,
            width: _animation.value,
            height: 50.0,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: barColorOpacity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}