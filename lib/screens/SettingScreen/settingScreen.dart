import 'package:fiverr_order/screens/SettingScreen/smallScreenDevice.dart';
import 'package:flutter/material.dart';

import 'MediumMobile.dart';
import 'myMobile.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;
    return Container(
      child: shortestSide < 370
          ? smallDevice
              ? smallScreenDevice(context)
              : myMobile(context)
          : largeDevice
              ? mediumMobile(context)
              : Container(),
    );
  }
}



