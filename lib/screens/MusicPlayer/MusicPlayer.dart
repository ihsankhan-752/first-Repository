import 'package:fiverr_order/screens/MusicPlayer/smallMobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MediumMob.dart';
import 'mobile.dart';
class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool smallDevice = shortestSide >= 320 && shortestSide < 360;
    final bool largeDevice = shortestSide < 450;
    return Container(
      child: shortestSide<370?smallDevice?smallMobile(context):mobile(context):largeDevice?mediumMob(context):Container(),

    );
  }
}

