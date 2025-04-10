import 'package:flutter/material.dart';
import 'package:lopezwidgets/alerta_dialogo.dart';
import 'package:lopezwidgets/container_animado.dart';
import 'package:lopezwidgets/lista_animada.dart';
import 'package:lopezwidgets/modelo_animado.dart';
import 'package:lopezwidgets/widget_animado.dart';
import 'package:lopezwidgets/filtro_de_fondo.dart';
import 'package:lopezwidgets/pagina_uno.dart';

void main() => runApp(MiWidgets());

class MiWidgets extends StatelessWidget {
  const MiWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const AlertaDialogo(),
        '/pantalla3': (context) => const ContainerAnimado(),
        '/pantalla4': (context) => const ListaAnimada(),
        '/pantalla5': (context) => const ModeloAnimado(),
        '/pantalla6': (context) => const WidgetAnimado(),
        '/pantalla7': (context) => const FiltroFondo(),
      },
    );
  }
}
