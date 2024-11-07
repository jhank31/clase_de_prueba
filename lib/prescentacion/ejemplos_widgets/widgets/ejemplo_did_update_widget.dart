import 'dart:developer';

import 'package:flutter/material.dart';

class EjemploDidUpdateWidget extends StatefulWidget {
  final int? contador;
  const EjemploDidUpdateWidget({
    super.key,
    this.contador,
  });

  @override
  State<EjemploDidUpdateWidget> createState() => _EjemploDidUpdateWidgetState();
}

class _EjemploDidUpdateWidgetState extends State<EjemploDidUpdateWidget> {
  @override
  void didUpdateWidget(covariant EjemploDidUpdateWidget oldWidget) {
    log('Se ha actualizado el widget padre');
    if (oldWidget.contador != widget.contador) {
      log('El parametro contador ha cambiado de ${oldWidget.contador} a ${widget.contador}');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Parametro que recibe el widget: ${widget.contador ?? 0}',
          style: const TextStyle(fontSize: 24)),
    );
  }
}
