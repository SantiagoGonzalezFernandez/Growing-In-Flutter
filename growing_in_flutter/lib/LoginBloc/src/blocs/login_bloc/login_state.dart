part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable{}

class LoginInitialState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginInState extends LoginState{
  @override
  List<Object> get props => throw UnimplementedError();
}

class LoggedInState extends LoginState{
  final String token;

  LoggedInState({
    this.token
  });

  @override
  List<Object> get props => [token];
}

class ErrorState extends LoginState{
  final String message;

  ErrorState({
    this.message
  });

  @override
  List<Object> get props => [message];
}
