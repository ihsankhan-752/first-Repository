import 'package:flutter/material.dart';
smallMobile(context){
  final screenSize=MediaQuery.of(context).size;
  return Scaffold(
    body: Container(
      height: screenSize.height,
      width: screenSize.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: myClipper(),
            child: Container(
                height: screenSize.height*0.75,
                width: screenSize.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("images/waterDrop.jpg",fit: BoxFit.cover,),
                    Column(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        // pause and play button
                      PauseAndPlayButton(),
                      ],
                    )
                  ],
                )
            ),
          ),
          // music name
         MusicName(),
          Padding(
            padding: EdgeInsets.only(left: 20,top: 05),
            child: Text("Arjit Singh",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
          ),
          SizedBox(height: 10,),
          // my slider
       MySlider(),
          //music time calculation
      MusicTimeCalculation(),
        ],
      ),
    ),

  );
}
class myClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, size.height-120);
    path.quadraticBezierTo(size.width/2, size.height+50, size.width, size.height-120);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
class PauseAndPlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      height: 100,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 05,left: 05,right: 05,bottom: 05),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.pause,color: Colors.black,),
              ),
            ),
            Icon(Icons.play_arrow_outlined,color: Colors.black,size: 30,)
          ],
        ),
      ),
    );
  }
}
class MusicName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: [
          Text("Water Falls",style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),),
          SizedBox(width: 05,),
          Text("(15:33 min)",style: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(0.5),
          ),
          ),
          Spacer(),
          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: Colors.white,)),
        ],
      ),
    );
  }
}
class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
          trackHeight: 1.5
      ),
      child: Slider(
        max: 16.0,
        min: 0.0,
        value: 7.4,
        onChanged: (value){},
      ),
    );
  }
}
class MusicTimeCalculation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25,right: 20,bottom: 05),
      child: Row(
        children: [
          Text("7.30",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
          Spacer(),
          Text("15.33",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5)),),
        ],
      ),
    );
  }
}




