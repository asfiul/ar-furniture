import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E3152),
      appBar: AppBar(
        title: Text("About App"),
        elevation: 4,
        centerTitle: true,
        backgroundColor: Color(0xff2E3152),
      ),
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "With this app, user can view 3D/vertual images of interior furnitures in their homes.",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                ),
                Text(
                  "How to use this app ---At firstly, update your google play services for AR Secondly,"
                  " click on the furniture images from the listThirdly, "
                  "scan your whole room and wait for 3 seconds.  Then set up the preferred location for your selective furniture",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Text(
                  "App Developed by ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Asfiul Islam Nibir",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Text(
                  "Asfiulislam80@gmail.com ",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
