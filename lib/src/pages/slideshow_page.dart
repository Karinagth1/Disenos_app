import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SlideShowPage extends StatelessWidget {
  const SlideShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset('assets/svgs/1')),
    );
  }
}
