
import 'package:fiverr_order/controller.dart';
import 'package:fiverr_order/screens/HomeScreen/HomeScreen.dart';
import 'package:fiverr_order/screens/LoginScreen/login_screen.dart';
import 'package:fiverr_order/screens/MusicPlayer/MusicPlayer.dart';
import 'package:fiverr_order/screens/ProfileScreen/ProfileScreen.dart';
import 'package:fiverr_order/screens/SettingScreen/settingScreen.dart';
import 'package:fiverr_order/screens/SleepSound/SleepSound.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>MyController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:LoginScreen(),
      ),
    );
  }
}
