import 'package:fiverr_order/screens/ProfileScreen/smallMobileScreen.dart';
import 'package:flutter/material.dart';

import 'mediumMobileScreen.dart';
import 'normalMobileScreen.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;
    return Container(
      child: shortestSide<370?smallDevice?smallMobileScreen():normalMobileScreen(context):
      largeDevice?mediumMobileScreen():Container(),
    );
  }
}


