//Imports that are not mine
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

//Imports that are mine

class NotificationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Notification Page'),
          backgroundColor: Colors.pink,
        ),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: FaIcon(FontAwesomeIcons.play),
      backgroundColor: Colors.pink,
      onPressed: () {

        final notificationModel = Provider.of<_NotificationModel>(context, listen: false);

        int numero = notificationModel.numero;
        numero++;
        notificationModel.numero = numero;

        if(numero >= 2){
          final controller = notificationModel.bounceController;
          controller.forward(from: 0.0);
        }
      },
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final int numero = Provider.of<_NotificationModel>(context).numero;

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: ('Bones'),
          icon: FaIcon(FontAwesomeIcons.bone)
        ),
        //FaIcon(FontAwesomeIcons.bell)
        BottomNavigationBarItem(
          label: ('Notification'),
          icon: Stack(
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: BounceInDown(
                  child: Bounce(
                    child: Container(
                      child: Text(
                        '$numero',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.0
                        ),
                      ),
                      alignment: Alignment.center,
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        shape: BoxShape.circle
                      ),
                    ),
                    from: 10.0,
                    controller: (controller) => Provider.of<_NotificationModel>(context).bounceController = controller
                  ),
                  from: 10.0,
                  animate: (numero > 0) ? true : false,
                )
              )
            ],
          )
        ),
        BottomNavigationBarItem(
          label: ('My Dog'),
          icon: FaIcon(FontAwesomeIcons.dog)
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.pink,
    );
  }
}

class _NotificationModel extends ChangeNotifier {

  int _numero = 0;
  AnimationController _bounceController;

  int get numero => this._numero;

  set numero(int valor) {
    this._numero = valor;
    notifyListeners();
  }

  AnimationController get bounceController => this._bounceController;

  set bounceController(AnimationController controller) {
    this._bounceController = controller;
    notifyListeners();
  }
}