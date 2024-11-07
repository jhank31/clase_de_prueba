import 'package:clase_de_prueba/prescentacion/ejemplos_widgets/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WidgetInmutable extends StatelessWidget {
  const WidgetInmutable({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listaDeNombres = [
      'Juan',
      'Pedro',
      'Maria',
      'Jose',
      'Ana',
      'Luis',
      'Carlos',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Inmutable'),
      ),
      //* llamamos al widget ListaDeNombres y le pasamos la lista de nombres como parametro
      body: ListaDeNombres(listaDeNombres: listaDeNombres),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/widget-mutable');
        },
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
