
import 'package:fiverr_order/screens/HomeScreen/HomeScreen.dart';
import 'package:fiverr_order/screens/SleepSound/SleepSound.dart';
import 'package:flutter/material.dart';
mediumPhone(context) {
  final screenSize = MediaQuery.of(context).size;
  return Container(
    height: screenSize.height,
    width: screenSize.width,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.brown,
        ])),
    child: Column(
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
              height: 300,
              width: screenSize.width,
              child: Image.asset(
                "images/d.jpg",
                fit: BoxFit.cover,
              )),
        ),
        Text(
          "Register Your Self",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontFamily: 'Pacifico'),
        ),
        MyTextField(text: "Name",icon: Icons.person,),
        MyTextField(text: "Password",icon: Icons.lock_sharp,),
        SignIn(),
        Padding(
          padding: const EdgeInsets.only(top: 20,right: 16),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text("Forget Your Password ?",style: TextStyle(fontSize: 14,color: Colors.white),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40,right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have an Account?",style: TextStyle(fontSize: 14,color: Colors.white),),
              Text(" Sign Up",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ],
    ),
  );
}
class MyTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  const MyTextField({Key key, this.text,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
      child: TextField(
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          isDense: true,
          filled: true,
          fillColor: Colors.indigo.withOpacity(0.2),
          prefixIcon: Icon(icon,color: Colors.black,size: 20,),
          hintText: text,
          hintStyle: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10,left: 16,right: 16),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black,
        ),
        child:  Center(child: Text("SIGN IN",style: TextStyle(fontSize: 18,color: Colors.white),),),
      ),
    );
  }
}
