import 'package:flutter/services.dart' show rootBundle; // => Asi solo nos queda visible el package que necesitamos

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  void cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) => print(data));
  }
}

// Singleton => solo una instancia
final menuProvider = new _MenuProvider();
