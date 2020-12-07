import 'package:flutter/material.dart';
enum Sessions{
  previousSession,
  myFavourite,
  home,
  musicPlayer,
  setting,
  login,


}
class MyController extends ChangeNotifier{

   Sessions _sessions=Sessions.previousSession;

  get session=>_sessions;

  set session(newValue){
    _sessions=newValue;
    notifyListeners();
  }

}