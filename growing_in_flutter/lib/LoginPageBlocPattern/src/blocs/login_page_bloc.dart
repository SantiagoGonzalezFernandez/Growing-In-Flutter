//Imports that are not mine
import 'dart:async';
import 'package:rxdart/rxdart.dart';

//Imports that are mine
//Validators
import 'package:growing_in_flutter/LoginPageBlocPattern/src/validators.dart';

class LoginPageBloc extends Object with Validators implements BaseLoginPageBloc{

  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Function(String) get emailChanged => _emailController.sink.add; 
  Function(String) get passwordChanged => _passwordController.sink.add; 

  Stream<String> get emailStream    => _emailController.stream.transform(emailValidator);
  Stream<String> get passwordStream => _passwordController.stream.transform(passwordValidator);

  Stream<bool> get submitCheck => Rx.combineLatest2(emailStream, passwordStream, (a, b) => false);

  submit() {}

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  } 

}

abstract class BaseLoginPageBloc {
  void dispose();
}