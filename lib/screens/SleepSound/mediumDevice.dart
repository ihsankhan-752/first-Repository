import 'package:fiverr_order/screens/MusicPlayer/MusicPlayer.dart';
import 'package:flutter/material.dart';
mediumPhone(context){
  final screenSize=MediaQuery.of(context).size;
  return Container(
    height: screenSize.height,
    width: screenSize.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FirstLine(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImagesFirstLine(),
                ImagesSecondLine()
              ],
            )
          ],
        ),
      ),
    ),
  );
}
class FirstLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back,size: 25,color: Colors.white,),
        ),
        Text("Sleep Sounds",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Pacifico'),),
       IconButton(icon:  Icon(Icons.play_circle_outline_outlined,size: 25,color: Colors.white,),
           onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayer()));
           })
      ],
    );
  }
}
class ImagesFirstLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PictureContainer(image: "images/lake.jpg",),
        SizedBox(height: 10,),
        Text("Lake", style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/ocean.jpg",),
        SizedBox(height: 10,),
        Text("Ocean",style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/forest.jpg",),
        SizedBox(height: 10,),
        Text("Forest", style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/rain.jpg",),
        SizedBox(height: 10,),
        Text("Rain", style: CommonTextStyle.myTextStyle,),

      ],
    );
  }
}
class ImagesSecondLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PictureContainer(image: "images/grassland.jpg",),
        SizedBox(height: 10,),
        Text("GrassLand", style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/night.jpg",),
        SizedBox(height: 10,),
        Text("Night", style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/farm.jpg",),
        SizedBox(height: 10,),
        Text("Farms", style: CommonTextStyle.myTextStyle,),

        PictureContainer(image: "images/spring.jpg",),
        SizedBox(height: 10,),
        Text("Spring", style: CommonTextStyle.myTextStyle,),

      ],
    );
  }
}
class PictureContainer extends StatelessWidget {
  final String image;

  const PictureContainer({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 15),
      height: 170,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}
class CommonTextStyle{
  CommonTextStyle._();
  static const myTextStyle=TextStyle(
      fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'
  );
}
