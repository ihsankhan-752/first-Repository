import 'package:flutter/material.dart';
mediumMobileScreen(){
  return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0XFF2F4F4F),
        centerTitle: true,
        title: Text("Edit Profile",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'Pacifico'),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16,top: 15),
            child: Text("Save",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'Pacifico'),),
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Profile(),
            MyTextField(text: "NAME",icon: Icons.person,),
            MyTextField(text: "PASSWORD",icon: Icons.lock_open_sharp,),
            MyTextField(text: "PHONE",icon: Icons.phone,),
            MyTextField(text: "GENDER",icon: Icons.accessibility,),
            MyTextField(text: "DATE OF BIRTH",icon: Icons.calendar_today,),
            SizedBox(height: 15,),
            ResetButton(),


          ],
        ),
      )
  );
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color(0xFF2F4F4F),
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(radius: 65,backgroundImage:AssetImage("images/a.jpg"),),
          ),
          Positioned(
            top: 120,
            right: 130,
            child: Container(
              height: 40,
              width: 40,
              child: Center(
                child: Icon(Icons.camera_alt_outlined,color: Colors.black,size: 20,),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red[900]
              ),
            ),
          )
        ],
      ),
    );
  }
}
class MyTextField extends StatelessWidget {
  final String text;
  final IconData icon;

  const MyTextField({Key key, this.text,this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15,left: 16,right: 16),
      child: TextField(
        cursorColor: Colors.black,

        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          isDense: true,
          filled: true,
          fillColor: Colors.white.withOpacity(0.5),
          prefixIcon: Icon(icon,color: Colors.black,),
          hintText: text,
          hintStyle: TextStyle(fontSize: 16,color: Colors.black,),
          labelText: text,
          labelStyle: TextStyle(fontSize: 13,color: Colors.black,),
        ),
      ),
    );
  }
}
class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Center(child: Text("RESET",style: TextStyle(fontSize: 18,color: Colors.white),),),
    )
    ;
  }
}
