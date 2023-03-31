// import 'package:disenos_app/src/widgets/headers_widget.dart';
// import 'package:disenos_app/src/widgets/headers_widget.dart';
// import 'package:disenos_app/src/widgets/widget.dart';
import 'package:disenos_app/src/retos/reto.dart';
import 'package:disenos_app/src/widgets/funcionaIcons.dart';
import 'package:disenos_app/src/widgets/widgetK.dart';
import 'package:disenos_app/src/models/listData.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final TabData? tabdata;

    //List<TabData> tabdata = TabData.iconsList;

    return const Scaffold(
        body: Center(
            child: CuadradoWidget(
                customHeight: 200,
                customHeightImage: 100,
                customRadiusCircularLeft: 10,
                customRadiusCircularRight: 12,
                customRadiusCircularTopLeft: 8,
                customRadiusCircularTopRight: 54,
                customWidth: 130,
                customWidthImage: 100,
                imageEgg: 'assets/breakfast.png')));
  }
}
