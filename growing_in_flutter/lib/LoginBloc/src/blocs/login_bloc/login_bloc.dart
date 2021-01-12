//Imports that are not mine
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

//Imports that are mine
import 'package:growing_in_flutter/LoginBloc/src/login_logic.dart';

//Parts
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginLogic loginLogic;

  LoginBloc({
    @required this.loginLogic
  }) : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is DoLoginEvent){
      yield* _doLogin(event);
    }
  }

  Stream<LoginState> _doLogin(DoLoginEvent event) async*{
    yield LoginInState();

    try {
      var token = await loginLogic.login(
        event.email, 
        event.password
      );
      yield LoggedInState(token: token);
    } on LoginException {
      yield ErrorState(message: 'No se pudo loggear');
    }
  }
}
