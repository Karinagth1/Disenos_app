// import 'package:disenos_app/src/pages/animation_page.dart';
// import 'package:disenos_app/src/pages/graficas_circulares_page.dart';
// import 'package:disenos_app/src/pages/headers_page.dart';
// import 'package:disenos_app/src/labs/progreso_circular_page.dart';
// import 'package:disenos_app/src/retos/reto.dart';
// import 'package:disenos_app/src/widgets/home_drawer_widget.dart';
// import 'package:disenos_app/src/widgets/widgetK.dart';
// import 'package:disenos_app/src/pages/first_page.dart';
// import 'package:disenos_app/src/pages/headers_page.dart';
import 'package:disenos_app/src/pages/slideshow_page.dart';
import 'package:disenos_app/src/widgets/home_drawer_widget.dart';
import 'package:flutter/material.dart';

// import 'package:disenos_app/src/pages/headers_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:
          SlideShowPage(), /* Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Drawer'),
        ),
        body: const Center(
          child: Text('Hola Mundo'),
        ),
      ), */
    );
  }
}




/* 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diseños APP',
        home: Scaffold( ));
  }
} */

/* class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
} */
