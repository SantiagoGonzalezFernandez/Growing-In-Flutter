abstract class LoginLogic {
  Future<String> login(String email, String password);
  Future<String> logout();
}

class SimpleLoginLogic extends LoginLogic {
  @override
  Future<String> login(String email, String password) async{
    await Future.delayed(Duration(seconds: 2));
    if(email != 'demo@demo.com' || password != '123456'){
      throw LoginException();
    }
    return 'un token';
  }

  @override
  Future<String> logout() async{
    return '';
  }

}

class LoginException implements Exception {}