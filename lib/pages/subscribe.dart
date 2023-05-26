// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wolly_vpn/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({ Key? key }) : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: bgTwo,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: IconButton(
              splashRadius: 1,
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.clear,color: bgOne,size: 39,)
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: bgTwo,
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/Vector1.svg",
                height: size.height*.2,
              ).py(size.height*.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Welloy".text.textStyle(TextStyle(fontFamily: "Roboto",color: borderColor,fontSize: 25,fontWeight: FontWeight.w300)).make(),
                  "VPN".text.textStyle(TextStyle(fontFamily: "Roboto",color: bgOne,fontWeight: FontWeight.bold,fontSize: 25)).make(),
                  " PREMIUM".text.textStyle(TextStyle(fontFamily: "Roboto",color: logoColor,fontWeight: FontWeight.bold,fontSize: 25)).make()
                ],
              ),
              70.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Group.svg",
                      height: size.height*.03,
                    ),
                    20.widthBox,
                    "Ad Free".text.textStyle(styleOne).make()
                  ],
                ).px(size.width*.2),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Group.svg",
                      height: size.height*.03,
                    ),
                    20.widthBox,
                    "24/7 Support".text.textStyle(styleOne).make()
                  ],
                ).px(size.width*.2),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Group.svg",
                      height: size.height*.03,
                    ),
                    20.widthBox,
                    "No Speed limit".text.textStyle(styleOne).make()
                  ],
                ).px(size.width*.2),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*.015,horizontal: size.width*.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/Group.svg",
                      height: size.height*.03,
                    ),
                    20.widthBox,
                    "Premium Locations".text.textStyle(styleOne).make()
                  ],
                ).px(size.width*.143),
              ),
              HeightBox(
                size.height*.18
              ),
              ElevatedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: borderColor)),
                  backgroundColor: MaterialStateProperty.all(Colors.transparent)
                ),
                onPressed: (){
      
                }, 
                child: "Subscribe Now".text.xl2.make()
              ).wh(size.width*.8, size.height*.07)
            ],
          ),
        ),
      ),
    );
  }
}