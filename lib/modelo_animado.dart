import 'package:flutter/material.dart';

class ModeloAnimado extends StatefulWidget {
  // Nombre de la clase añadido
  const ModeloAnimado({Key? key}) : super(key: key);

  @override
  _ModeloAnimadoState createState() => _ModeloAnimadoState();
}

class _ModeloAnimadoState extends State<ModeloAnimado> {
  bool _isFlat = true; // Variable de estado añadida

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: _isFlat ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            child: const SizedBox(
              height: 120.0,
              width: 120.0,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Click'),
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
