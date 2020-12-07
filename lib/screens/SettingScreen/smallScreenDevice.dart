import 'package:flutter/material.dart';
smallScreenDevice(context) {
  final screenSize = MediaQuery.of(context).size;
  return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ColorFiltered(
                    colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcATop),
                    child: Image.asset(
                      "images/waterDrop.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          CommonContainer(name: "Go Premium",icon: Icons.accessibility_new_sharp,),
                          CommonContainer(name: "Rate Us",icon: Icons.rate_review,),
                          CommonContainer(name: "Share",icon: Icons.share,),
                          CommonContainer(name: "Account Info",icon: Icons.person,),
                          CommonContainer(name: "Change Password",icon: Icons.lock_open_sharp,),
                          CommonContainer(name: "Feedback",icon: Icons.feedback,),
                          CommonContainer(name: "Help Translate",icon: Icons.translate,),
                          CommonContainer(name: "Credit",icon: Icons.credit_card,),
                          CommonContainer(name: "Privacy Policy",icon: Icons.policy_sharp,),
                          CommonContainer(name: "Log Out",icon: Icons.logout,),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CommonContainer(name: "Go Back",icon: Icons.arrow_back,),),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ));
}

class CommonContainer extends StatelessWidget {
  final String name;
  final IconData icon;

  const CommonContainer({Key key, this.name, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 16, right: 16, bottom: 5),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
            Colors.purple,
            Colors.pink,
            Color(0xFF2F4F4F),
          ])),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 20, color: Colors.black, fontFamily: 'Pacifico'),
            ),
            Icon(
              icon,
              size: 25,
              color: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}

