import 'dart:math' as math;

import 'package:flutter/material.dart';

class WidgetAnimado extends StatefulWidget {
  const WidgetAnimado({Key? key}) : super(key: key);

  @override
  State<WidgetAnimado> createState() => _WidgetAnimadoState();
}

class _WidgetAnimadoState extends State<WidgetAnimado>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: TheWidget(controller: _controller),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar'),
          ),
        ),
      ],
    );
  }
}

class TheWidget extends AnimatedWidget {
  const TheWidget({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
      ),
    );
  }
}
