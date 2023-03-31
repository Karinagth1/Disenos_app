import 'package:flutter/material.dart';

class TabData {
  TabData(
      {this.customRadiusCircularLeft = 0,
      this.customRadiusCircularRight = 0,
      this.customRadiusCircularTopLeft = 0,
      this.customRadiusCircularTopRight = 0,
      this.customWidth = 0,
      this.customHeight = 0,
      this.customWidthImage = 0,
      this.customHeightImage = 0,
      this.imageEgg = ''});

  double customRadiusCircularLeft;
  double customRadiusCircularRight;
  double customRadiusCircularTopLeft;
  double customRadiusCircularTopRight;
  double customWidth;
  double customHeight;
  double customWidthImage;
  double customHeightImage;
  String imageEgg;

  static List<TabData> iconsList = <TabData>[
    TabData(
        customHeight: 200,
        customHeightImage: 100,
        customRadiusCircularLeft: 10,
        customRadiusCircularRight: 12,
        customRadiusCircularTopLeft: 8,
        customRadiusCircularTopRight: 54,
        customWidth: 130,
        customWidthImage: 100,
        imageEgg: 'assets/breakfast.png'),
  ];
}
