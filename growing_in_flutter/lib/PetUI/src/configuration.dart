//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Imports that are mine

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30.0,
    offset: Offset(0.0, 10.0)
  )
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'PetUI/assets/images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'PetUI/assets/images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'PetUI/assets/images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'PetUI/assets/images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'PetUI/assets/images/horse.png'},
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];