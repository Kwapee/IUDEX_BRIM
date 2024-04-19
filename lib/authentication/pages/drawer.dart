import 'dart:math';

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: const Color.fromRGBO(2, 62, 107, 1),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 60,),
            child: Text(
              "menu.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 270, top: 67,),
            child: Icon(Icons.close, color: Colors.white, size: 33,),
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 20, top: 170,),
            child: Transform.rotate(
              angle: pi/2,
              child: const Icon(
                Icons.local_offer,
                color: Colors.white,
                size: 33,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
              top: 170,
            ),
            child: Text(
              "Promotion",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 230,
            ),
               child: Icon(
                Icons.person,
                color: Colors.white,
                size: 33,
              ),
            ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
              top: 230,
            ),
            child: Text(
              "Support",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 290,
            ),
            child: Icon(
              Icons.car_repair,
              color: Colors.white,
              size: 33,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
              top: 290,
            ),
            child: Text(
              "Happy drive",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 350,
            ),
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 33,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
              top: 350,
            ),
            child: Text(
              "About us",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 410,
            ),
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 33,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 70,
              top: 410,
            ),
            child: Text(
              "Settings",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
           const Padding(
             padding: EdgeInsets.only(
              left: 20,
              top: 650,
            ),
             child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://www.wallpapertip.com/wmimgs/240-2407810_gangsta-anime-wallpaper.jpg"),   
             ),
           ),
           const Padding(
            padding: EdgeInsets.only(
              left: 90,
              top: 660,
            ),
            child: Text(
              "Kwapee",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),   
          const Padding(
            padding: EdgeInsets.only(
              left: 90,
              top: 720,
            ),
            child: Icon(
              Icons.logout,
              color: Colors.white,
              size: 25,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 120,
              top: 720,
            ),
            child: Text(
              "Logout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),   
        ],
        
      ),
    );
  }
}
