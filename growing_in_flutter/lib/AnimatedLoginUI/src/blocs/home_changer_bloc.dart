//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/AnimatedLoginUI/src/constants.dart';

class HomeChangerBloc extends ChangeNotifier {

  //Password is visible
  bool _isVisible = false;

  get isVisible => _isVisible;

  set isVisible(bool value){
    _isVisible = value;
    notifyListeners();
  }

  //Email is valid
  bool _isValid = false;

  get isValid => _isValid;

  void isValidEmail(String email) {
    if(email == Constants.validEmail.first){
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }
  


}