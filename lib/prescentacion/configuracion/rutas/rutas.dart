// aqui creamos una funcion para manejar las rutas de la aplicacion
import 'package:clase_de_prueba/prescentacion/vistas.dart';
import 'package:flutter/material.dart';

// aqui creamos un mapa de rutas
final Map<String, Widget Function(BuildContext)> rutas = {
  '/': (BuildContext context) => const WidgetInmutable(),
  '/widget-mutable': (BuildContext context) => const WidgetMutable(),
};
