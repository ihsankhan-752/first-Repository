import 'package:fiverr_order/screens/LoginScreen/smallScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mediumDevice.dart';
import 'mobile.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          shortestSide < 370 ? smallDevice?smallMob(context):mobile(context):largeDevice ?mediumPhone(context)
                  : Container(),
        ],
      ),
    ));
  }
}



