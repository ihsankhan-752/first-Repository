import 'package:flutter/material.dart';

import 'NormalMobile.dart';
import 'mediumMobile.dart';
import 'smallMobile.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;
    return Container(
      height:screenSize.height,
      width: screenSize.width,
      child: shortestSide<370?smallDevice?smallMobile(context):
      normalMobile(context):largeDevice?mediumMobile(context):Container(),
    );
  }
}
