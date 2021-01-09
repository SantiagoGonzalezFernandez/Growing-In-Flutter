//Imports that are not mine
import 'dart:async';

//Imports that are mine


const PRODUCTOS = [
  'Microfono',
  'Parlante',
  'Teclado',
  'Camara'
];

class ProductosBloc {

  Stream<List<String>> get getProductos async* {
    final List<String> productos = [];
    for (String producto in PRODUCTOS) {
      await Future.delayed(Duration(seconds: 2));
      productos.add(producto);
      yield productos;
    }
  }

  StreamController<int> _productosContador = StreamController<int>();
  Stream<int> get productosContadorStream => _productosContador.stream;

  ProductosBloc() {
    this.getProductos.listen(
      (productosList) => this._productosContador.add(productosList.length)
    );
  }

  dispose() {
    _productosContador.close();
  }

}