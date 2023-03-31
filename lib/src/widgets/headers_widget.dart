import 'package:flutter/material.dart';

class HeaderWidgetCuadrado extends StatelessWidget {
  const HeaderWidgetCuadrado(
      {super.key, required this.customHeight, required customColor});
  final double customHeight;
  static const customColor = Color(0xffA435F0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: customHeight,
      color: customColor,
    );
  }
}

class HeaderWidgetCircular extends StatelessWidget {
  const HeaderWidgetCircular({
    super.key,
    required this.customHeight,
/*     required customColor,
    required customRadiusCircularLeft,
    required customRadiusCircularRight, */
  });
  final double customHeight;
  static const customColor = Color(0xffA435F0);
  static const double customRadiusCircularLeft = 70;
  static const double customRadiusCircularRight = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: customHeight,
      decoration: const BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(customRadiusCircularLeft),
            bottomRight: Radius.circular(customRadiusCircularRight),
          )),
    );
  }
}

class HeaderWidgetDiagonal extends StatelessWidget {
  const HeaderWidgetDiagonal({
    super.key,
  });
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  static const customColor = Color(0xffA435F0);
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    // Propiedades
    lapiz.color = customColor;
    lapiz.style = PaintingStyle.fill; // .fill  .stroke

    final path = Path();
    // Para dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWidgetTriangular extends StatelessWidget {
  const HeaderWidgetTriangular({super.key});
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  final double customStrokeWidth = 20;
  static const customColor = Color(0xffA435F0);
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = customColor;
    lapiz.style = PaintingStyle.fill; // .fill .stroke // -mas grosor
    lapiz.strokeWidth = customStrokeWidth;

    final path = Path();

    // Para dibujar con el path y el lapiz
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWidgetPico extends StatelessWidget {
  const HeaderWidgetPico({super.key});
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  final double customStrokeWidth = 20;
  static const customColor = Color(0xffA435F0);
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = customColor;
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = customStrokeWidth;

    final path = Path();

    // Para dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWidgetCurvo extends StatelessWidget {
  const HeaderWidgetCurvo({super.key});
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  final double customStrokeWidth = 20;
  static const customColor = Color(0xffA435F0);
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = customColor;
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = customStrokeWidth;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.50, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWidgetWave extends StatelessWidget {
  const HeaderWidgetWave({super.key, required this.customStrokeWidth});

  final double customStrokeWidth;
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderWavePainter(customStrokeWidth: customStrokeWidth),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  const _HeaderWavePainter({
    required this.customStrokeWidth,
  });
  final double customStrokeWidth;
  static const customColor = Color(0xffA435F0);

  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = customColor;
    lapiz.style = PaintingStyle.stroke; // .fill .stroke
    lapiz.strokeWidth = customStrokeWidth;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWidgetWaveGradient extends StatelessWidget {
  const HeaderWidgetWaveGradient({super.key});
  final double customHeight = double.infinity;
  final double customWidth = double.infinity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        // Rect.fromCircle(center: const Offset(##VERTICAL 0.0, ##HORIZONTAL 45.0), radius: 180);
        Rect.fromCircle(center: const Offset(0.0, 105.0), radius: 180);

    const Gradient gradiente = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xffE8C31C),
          Color(0xffC96432),
          Color(0xffFC4136),
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
