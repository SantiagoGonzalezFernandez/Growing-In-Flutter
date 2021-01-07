//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/AnimatedLoginUI/src/constants.dart';
//Blocs
import 'package:growing_in_flutter/AnimatedLoginUI/src/blocs/home_changer_bloc.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  CustomTextField({
    Key key, 
    this.hintText, 
    this.prefixIconData, 
    this.suffixIconData, 
    this.obscureText, 
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final homeChangerBloc = Provider.of<HomeChangerBloc>(context);
    
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.mediumBlue,
        fontSize: 14.0
      ),
      cursorColor: Constants.mediumBlue,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18.0,
          color: Constants.mediumBlue,
        ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Constants.mediumBlue)
        ),
        suffixIcon: GestureDetector(
          child: Icon(
            suffixIconData,
            size: 18.0,
            color: Constants.mediumBlue,
          ),
          onTap: () {
            homeChangerBloc.isVisible = !homeChangerBloc.isVisible;
          },
        ),
        labelStyle: TextStyle(color: Constants.mediumBlue),
        focusColor: Constants.mediumBlue,
      ),
      onChanged: onChanged,
    );
  }
}