import 'package:fiverr_order/screens/LoginScreen/login_screen.dart';
import 'package:fiverr_order/screens/MusicPlayer/MusicPlayer.dart';
import 'package:fiverr_order/screens/ProfileScreen/ProfileScreen.dart';
import 'package:fiverr_order/screens/SettingScreen/settingScreen.dart';
import 'package:fiverr_order/screens/SleepSound/SleepSound.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller.dart';
smallMobile(context){
  final screenSize=MediaQuery.of(context).size;
  final MyController info=Provider.of<MyController>(context);
  return Scaffold(
    bottomNavigationBar: MyBottomAppBar(),
    backgroundColor: Colors.black,
    body:info.session==Sessions.previousSession? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenSize.height*0.8,
          width: screenSize.width,
          decoration: BoxDecoration(
              color: Color(0xFF3A3A3A),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeContainer(),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 16),
                child: Text("Session Selection",style: TextStyle(
                    fontSize: 16,color: Colors.blue,fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold
                ),),
              ),
              DifferentSessions(),
              SessionInfo(),
            ],
          ),
        ),
        SessionSelection(),
      ],
    ):Container(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: Text("Favorite",style: TextStyle(fontSize: 20,color: Colors.white),),
            actions: [Icon(Icons.add,size:25,color: Colors.white,)],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 16,right: 16),
            child:  Text("Add your Favourite Mood Here",style: TextStyle(
                fontSize: 16,color: Colors.amber,
                fontFamily: 'Pacifico'
            ),),
          ),
          Spacer(),
          SessionSelection(),
          SizedBox(height: 20,)
        ],
      ),
    ),
  );
}
class WelcomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return   Container(
      height: 100,
      width: screenSize.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
          gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.brown,
              ]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(radius: 25,backgroundImage: AssetImage("images/a.jpg"),),
            SizedBox(width: 20,),
            Text("WELCOME\nTo Mediation Center",
              style: TextStyle(fontSize: 14,color: Colors.blue,fontFamily: 'Pacifico'),)
          ],
        ),
      ),
    );
  }
}
class DifferentSessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10,left: 16,right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonSession(image: "images/stress.webp",text: "Stress",),
              CommonSession(image: "images/sleep.png",text: "Sleep",),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonSession(image: "images/mediation.png",text: "Mediation",),
              CommonSession(image: "images/tuneup.png",text: "Tune Up",),
            ],
          )
        ],
      ),
    );
  }
}
class CommonSession extends StatelessWidget {
  final String image;
  final String text;

  const CommonSession({Key key, this.image,this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image.asset(image,height: 40,color: Colors.white,),
            SizedBox(height: 05,),
            Text(text,style: TextStyle(fontSize: 12,color: Colors.white,fontFamily: 'Pacifico'),)
          ],
        ),
      ),
    );
  }
}
class SessionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10,left: 18,right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Session per\nweek",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
              Container(
                height: 30,
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              Text("Total Sessions",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
              Container(
                height: 30,
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              Text("Average\nimprovement",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10,left: 45,right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("15",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 14,color: Colors.white),),
              Text("105",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 14,color: Colors.white),),
              Text("25\%",textAlign:TextAlign.center,
                style: TextStyle(fontSize: 14,color: Colors.white),),
            ],
          ),
        )
      ],
    );
  }
}
class SessionSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyController info=Provider.of<MyController>(context);
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 10,left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    info.session=Sessions.previousSession;
                  },
                  child: Text("Previous Sessions",style: TextStyle(
                    fontSize: 16,
                    color: info.session==Sessions.previousSession?Colors.white:Colors.white.withOpacity(0.5),
                    fontFamily: 'Pacifico',
                  ),),
                ),
                InkWell(
                  onTap: (){
                    info.session=Sessions.myFavourite;
                  },
                  child: Text("My Favorites",style: TextStyle(
                    fontSize: 16,
                    color: info.session==Sessions.myFavourite?Colors.white:Colors.white.withOpacity(0.5),
                    fontFamily: 'Pacifico',
                  ),),
                ),
              ],
            )
        ),
        Padding(
            padding: const EdgeInsets.only(top: 5,left: 25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    info.session=Sessions.previousSession;
                  },
                  child: Container(
                    height: 1,
                    width: 100,
                    color: info.session==Sessions.previousSession?Colors.white:Colors.black,
                  ),
                ),
                InkWell(
                  onTap:(){
                    info.session=Sessions.myFavourite;
                  },
                  child: Container(
                    height: 1,
                    width: 100,
                    color: info.session==Sessions.myFavourite?Colors.white:Colors.black,
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}
class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Container(
        height: 45,
        color: Color(0xFF3A3A3A),
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, size: 25, color: Colors.white,),
              IconButton(
                  icon: Icon(
                    Icons.music_video, size: 25, color: Colors.white,),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SleepSound()));
                  }),
              IconButton(icon: Icon(Icons.settings,size: 25, color: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  })

            ],
          ),
        ),
      ),
    );
  }
}

