//Imports that are not mine

//Imports that are mine

class RoutingData {

  final String route;
  final Map<String, String> _queryParametres;

  RoutingData({
    this.route, 
    Map<String, String> queryParametres
  }) : _queryParametres = queryParametres;

  operator[](String key) => _queryParametres[key];
}