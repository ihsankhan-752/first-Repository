

import 'package:flutter/material.dart';
import 'smallMob.dart';
import 'mediumDevice.dart';
import 'mobile.dart';
class SleepSound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;

    return Scaffold(
      backgroundColor: Colors.brown,
        body: SingleChildScrollView(
            child: Column(
                children: [
            shortestSide < 370 ? smallDevice?smallMob(context):mobile(context):largeDevice
                ?mediumPhone(context) : Container(),
            ]
            )
    )
    );
  }
}





