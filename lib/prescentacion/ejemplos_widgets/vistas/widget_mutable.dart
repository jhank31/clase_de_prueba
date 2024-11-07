import 'dart:developer';

import 'package:clase_de_prueba/prescentacion/ejemplos_widgets/widgets/ejemplo_did_update_widget.dart';
import 'package:flutter/material.dart';

class WidgetMutable extends StatefulWidget {
  const WidgetMutable({super.key});

  //? en este punto del widget se crea el estado del widget
  @override
  State<WidgetMutable> createState() => _WidgetMutableState();
}

class _WidgetMutableState extends State<WidgetMutable> {
  late int contador;
  bool esVisibleElTexto = false;

  //? en este punto del widget se inicializa el estado del widget
  @override
  void initState() {
    log('Se ha creado el estado del widget');
    contador = 0;
    super.initState();
  }

  /*
  ? este metodo se ejecuta cuando se cambian las dependencias del widget
  ? por ejemplo cuando se cambia el tema de la aplicacion
  ? o cuando se cambia el idioma de la aplicacion
  ? su uso es opcional y en la mayoria de los casos no se utiliza
  */
  @override
  void didChangeDependencies() {
    log('Se ha cambiado la dependencia del widget');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    //? este metodo se ejecuta cuando el widget esta siendo eliminado temporalmente
    //? del arbol de widgets y se puede integrar en otro contexto
    log('Se ha desactivado el widget');
    super.deactivate();
  }

  @override
  void dispose() {
    log('Se ha eliminado el estado del widget');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Se ha construido el widget');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Mutable'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
            //* Navigator.of(context).pop();  -> otra forma de hacerlo
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: esVisibleElTexto,
            child: const Text('Texto visible', style: TextStyle(fontSize: 24)),
          ),
          Center(
            child: Text(
              'Valor del contador: $contador',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          EjemploDidUpdateWidget(contador: contador),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              incrementar();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: decrementar,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: () => cambiarVisibilidad(),
            child: const Icon(Icons.change_circle_outlined),
          ),
        ],
      ),
    );
  }

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  void cambiarVisibilidad() {
    setState(() {
      esVisibleElTexto = !esVisibleElTexto;
    });
  }
}
