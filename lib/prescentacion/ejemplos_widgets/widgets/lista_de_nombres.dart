import 'package:flutter/material.dart';

class ListaDeNombres extends StatelessWidget {
  // declaramos una lista de nombres como parametro
  final List<String> listaDeNombres;
  //? final List<String>? listaDeNombres;
  //exigimos que la lista de nombres sea requerida o se puede establecer como opcional o asignarle un valor
  const ListaDeNombres({super.key, required this.listaDeNombres});
  //const ListaDeNombres({super.key, this.listaDeNombres = const ['Juan', 'Pedro', 'Maria', 'Jose', 'Ana', 'Luis', 'Carlos']});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // podemos omitir parametros de una funcion si no los vamos a usar con _, __,__ etc
      separatorBuilder: (_, __) => const Divider(),
      itemCount: listaDeNombres.length,
      itemBuilder: (BuildContext contexto, int indiceDeLaLista) {
        return ListTile(
          title: Text(listaDeNombres[indiceDeLaLista]),
        );
      },
    );
  }
}
