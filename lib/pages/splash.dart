// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:wolly_vpn/pages/signup.dart';

import '/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [bgOne, bgTwo],
                // stops: [0.1, 1],
                begin: Alignment(1,-4),
                end: Alignment(1,1))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: size.height*.55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        height: 130,
                      ),
                      Positioned(
                        top: size.height*.16,
                        child: SvgPicture.asset("assets/Vector.svg",height: size.height*.29, )),
                      Positioned(
                        top: size.height*.48,
                        child: Row(
                          children: [
                            "Welloy".text.textStyle(TextStyle(fontFamily: "Roboto",color: borderColor,fontSize: 30,fontWeight: FontWeight.w300)).make(),
                            "VPN".text.textStyle(TextStyle(fontFamily: "Roboto",color: bgOne,fontWeight: FontWeight.bold,fontSize: 30)).make()
                          ],
                        ),
                      )
                    ]
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: Text(
                    "Come on, maximize your\n internet connection with us",
                    style: styleOne,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: size.height*.07,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: borderColor),
                          primary: Colors.transparent,
                          elevation: 0,
                          textStyle: const TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
