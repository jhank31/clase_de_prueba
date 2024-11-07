// las clases selladas son clases que no pueden ser heredadas
// se usan para evitar que una clase sea heredada
// solo se pueden heredar de una clase sellada si estan en el mismo archivo

import 'dart:developer';

sealed class Plato {}

class PlatoPrincipal extends Plato {
  final String nombre;
  final double precio;

  PlatoPrincipal({required this.nombre, required this.precio});
}

class Postre extends Plato {
  final String sabor;
  final bool sinGluten;

  Postre({required this.sabor, this.sinGluten = false});
}

class Bebida extends Plato {
  final String tipo;
  final int tamanhio;

  Bebida({required this.tipo, required this.tamanhio});
}

void pedirComida(Plato plato) {
  switch (plato) {
    case PlatoPrincipal(nombre: var nombre, precio: var precio):
      log('Has pedido un plato principal: $nombre a $precio pesos');
      break;
    case Postre(sabor: var sabor, sinGluten: var sinGluten):
      log('Has pedido un postre de $sabor. ¿Sin gluten? $sinGluten');
      break;
    case Bebida(tipo: var tipo, tamanhio: var tamanhio):
      log('Has pedido una $tipo de tamaño $tamanhio');
      break;
  }
}
