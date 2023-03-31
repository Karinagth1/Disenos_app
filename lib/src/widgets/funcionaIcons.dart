import 'package:flutter/material.dart';

class CuadradoWidget extends StatefulWidget {
  const CuadradoWidget({
    super.key,
    required this.customRadiusCircularLeft,
    required this.customRadiusCircularRight,
    required this.customRadiusCircularTopLeft,
    required this.customRadiusCircularTopRight,
    required this.customWidth,
    required this.customHeight,
    required this.customWidthImage,
    required this.customHeightImage,
    required this.imageEgg,
  });

  final double customRadiusCircularLeft;
  final double customRadiusCircularRight;
  final double customRadiusCircularTopLeft;
  final double customRadiusCircularTopRight;
  final double customWidth;
  final double customHeight;
  final double customWidthImage;
  final double customHeightImage;
  final String imageEgg;

  @override
  State<CuadradoWidget> createState() => _CuadradoWidget();
}

class _CuadradoWidget extends State<CuadradoWidget> {
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
            width: widget.customWidth,
            height: widget.customHeight,
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
                bottomRight: Radius.circular(widget.customRadiusCircularRight),
                bottomLeft: Radius.circular(widget.customRadiusCircularLeft),
                topLeft: Radius.circular(widget.customRadiusCircularTopLeft),
                topRight: Radius.circular(widget.customRadiusCircularTopRight),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 95,
            height: 95,
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
                width: widget.customWidthImage,
                height: widget.customHeightImage,
                child: Image.asset(widget.imageEgg)))
      ]),
    );
  }
}
