import 'package:clase_de_prueba/prescentacion/ejemplos_widgets/widgets/widgets.dart';
import 'package:clase_de_prueba/prescentacion/utilidades/es_tema_oscuro.dart';
import 'package:flutter/material.dart';

class WidgetInmutable extends StatelessWidget {
  const WidgetInmutable({super.key});

  @override
  Widget build(BuildContext context) {
    // final pagoConEfectivo = PagoConEfectivo()
    //   ..pagarReserva(100)
    //   ..procesarPago(200);

    // final pagoConTarjeta = PagoConTarjeta()..emitirFactura();
    //pedirComida(PlatoPrincipal(nombre: 'Bandeja Paisa', precio: 12000));

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
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color:
              context.esTemaOscuro == true ? Colors.white : Colors.deepPurple,
        ),
      ),
    );
  }
}
