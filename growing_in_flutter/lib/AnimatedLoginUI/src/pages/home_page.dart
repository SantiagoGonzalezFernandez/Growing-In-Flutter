//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine
//Constants
import 'package:growing_in_flutter/AnimatedLoginUI/src/constants.dart';
//Widgets
import 'package:growing_in_flutter/AnimatedLoginUI/src/widgets/custom_text_field.dart';
import 'package:growing_in_flutter/AnimatedLoginUI/src/widgets/custom_button.dart';
import 'package:growing_in_flutter/AnimatedLoginUI/src/widgets/wave_widget.dart';
//Blocs
import 'package:growing_in_flutter/AnimatedLoginUI/src/blocs/home_changer_bloc.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final homeChangerBloc = Provider.of<HomeChangerBloc>(context);
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Constants.white,
      body: Stack(
        children: [
          Container(
            height: size.height - 200.0,
            color: Constants.mediumBlue,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuad,
            top: keyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Constants.white
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextField(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: homeChangerBloc.isValid ? Icons.check : null,
                  onChanged: (email) {
                    homeChangerBloc.isValidEmail(email);
                  },
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextField(
                      hintText: 'Password',
                      obscureText: homeChangerBloc.isVisible ? false : true,
                      prefixIconData: Icons.lock_outline,
                      suffixIconData: homeChangerBloc.isVisible 
                        ? Icons.visibility 
                        : Icons.visibility_off,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Constants.mediumBlue
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                CustomButton(
                  title: 'Login',
                  hasBorder: false
                ),
                SizedBox(height: 10.0),
                CustomButton(
                  title: 'Sign Up',
                  hasBorder: true
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}