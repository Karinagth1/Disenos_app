import 'package:flutter/material.dart';
// import 'package:disenos_app/src/widgets/widget.dart';
import 'package:disenos_app/src/models/listData.dart';

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    super.key,
    this.tabdata,
  });
  final TabData? tabdata;

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimado();
}

class _CuadradoAnimado extends State<CuadradoAnimado> {
  List<TabData> tabdata = TabData.iconsList;

  static const customColorUp = Color(0xffFA7D82);
  static const customColorDown = Color(0xffFFB295);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 16),
          child: Container(
            width: widget.tabdata!.customWidth,
            height: widget.tabdata!.customHeight,
            decoration: BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(offset: Offset(1.1, 4.0), blurRadius: 8.0),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  customColorUp,
                  customColorDown,
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight:
                    Radius.circular(widget.tabdata!.customRadiusCircularRight),
                bottomLeft:
                    Radius.circular(widget.tabdata!.customRadiusCircularLeft),
                topLeft: Radius.circular(
                    widget.tabdata!.customRadiusCircularTopLeft),
                topRight: Radius.circular(
                    widget.tabdata!.customRadiusCircularTopRight),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 88,
            height: 88,
            decoration: const BoxDecoration(
              color: Color.fromARGB(76, 220, 220, 209),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
            top: -10,
            left: 2,
            child: SizedBox(
                width: widget.tabdata!.customWidthImage,
                height: widget.tabdata!.customHeightImage,
                child: Image.asset(widget.tabdata!.imageEgg)))
      ]),
    );
  }
}
