import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CuadroAnimado(),
      ),
    );
  }
}

class CuadroAnimado extends StatefulWidget {
  const CuadroAnimado({super.key});
  @override
  State<CuadroAnimado> createState() => _CuadroAnimadoState();
}

class _CuadroAnimadoState extends State<CuadroAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotacion;

  late Animation<double> opacidad;
  late Animation<double> opacidadOut;

  late Animation<double> moverDerecha;
  late Animation<double> agrandar;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(microseconds: 4000));

    rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    opacidad = Tween(begin: 0.1, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.25, curve: Curves.easeOut)));

    opacidadOut = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeOut)));

    moverDerecha = Tween(begin: 0.0, end: 200.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    agrandar = Tween(begin: 0.0, end: 2.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.addListener(() {
      // print('Status: ${ controller.status }');
      if (controller.status == AnimationStatus.completed) {
        // controller.repeat();
        controller.reset();
        // controller.reverse();
      }
/*       else if (controller.status == AnimationStatus.dismissed){
        controller.forward();
      } */
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproducción
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (context, childRectangulo) {
        // print('rotacion:' + rotacion.value.toString());
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: Transform.rotate(
              angle: rotacion.value,
              child: Opacity(
                opacity: opacidad.value - opacidadOut.value,
                child: Transform.scale(
                    scale: agrandar.value, child: childRectangulo),
              )),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.pink),
    );
  }
}
