// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wolly_vpn/constants/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isConnected = false;
  String _connectedCountry = "";

  setCountry(name){
    _connectedCountry = name;
    _isConnected = true;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorOne,
        iconTheme: IconThemeData(color: colorTwo, size: 30),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            "Welloy"
                .text
                .textStyle(TextStyle(
                    fontFamily: "Roboto",
                    color: borderColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300))
                .make(),
            "VPN"
                .text
                .textStyle(TextStyle(
                    fontFamily: "Roboto",
                    color: bgOne,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))
                .make()
          ],
        ),
        actions: [
          InkWell(
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            onTap: (){
              Navigator.pushNamed(context, "/subscribe");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: SvgPicture.asset(
                "assets/premium.svg",
                color: Colors.amber,
                width: 27 + 4.5,
                height: 33 + 5.5,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: colorOne,
        child: _isConnected
            ? Stack(
                children: [
                  Positioned(
                    top: size.height * .03,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: bgOne),
                              left: BorderSide(color: bgOne),
                              right: BorderSide(color: bgOne),
                              top: BorderSide(color: bgOne)),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Server : "
                              .text
                              .textStyle(TextStyle(color: bgOne))
                              .xl2
                              .make(),
                          // Image.asset("assets/Indonesia.png",),
                          " $_connectedCountry"
                              .text
                              .textStyle(TextStyle(color: bgOne))
                              .xl2
                              .make()
                        ],
                      ),
                    ).px(40),
                  ),
                  Positioned(
                      top: size.height * .0,
                      child: SvgPicture.asset(
                        "assets/map.svg",
                        width: size.width,
                      )),
                  Positioned(
                      top: size.height * .13,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "02:23:00"
                              .text
                              .textStyle(TextStyle(color: bgOne))
                              .xl4
                              .make()
                        ],
                      )),
                  Positioned(
                      top: size.height * .35,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height * .2,
                                width: size.width * .4,
                                decoration: BoxDecoration(
                                    color: borderColor,
                                    border: Border.all(color: borderColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/flags/$_connectedCountry.png",
                                      height: 50,
                                    ),
                                    _connectedCountry
                                        .text
                                        .textStyle(
                                            TextStyle(color: Colors.white))
                                        .xl2
                                        .make(),
                                    "Jakarta".text.white.xl.make()
                                  ],
                                ).px(10),
                              ),
                              10.widthBox,
                              Container(
                                height: size.height * .2,
                                width: size.width * .4,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: borderColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: btColor,
                                        child: Icon(
                                          Icons.signal_cellular_alt,
                                        )),
                                    "20 ms"
                                        .text
                                        .textStyle(TextStyle(color: bgOne))
                                        .bold
                                        .xl2
                                        .make(),
                                    "Ping".text.white.xl.make()
                                  ],
                                ).px(10),
                              ),
                            ],
                          ),
                          20.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height * .2,
                                width: size.width * .4,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: borderColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Image.asset("assets/Indonesia.png",height: 50,),
                                    CircleAvatar(
                                        backgroundColor: btColor,
                                        child: Icon(
                                          Icons.cloud_download,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    "23,78 Mbps"
                                        .text
                                        .textStyle(TextStyle(color: bgOne))
                                        .bold
                                        .xl2
                                        .make(),
                                    "Download".text.white.xl.make()
                                  ],
                                ).px(10),
                              ),
                              10.widthBox,
                              Container(
                                height: size.height * .2,
                                width: size.width * .4,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: borderColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Image.asset("assets/Indonesia.png",height: 50,),
                                    CircleAvatar(
                                        backgroundColor: btColor,
                                        child: Icon(
                                          Icons.cloud_upload,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    "17,90 Mbps"
                                        .text
                                        .textStyle(TextStyle(color: bgOne))
                                        .xl2
                                        .make(),
                                    "Upload".text.white.xl.make()
                                  ],
                                ).px(10),
                              ),
                            ],
                          ),
                          20.heightBox,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 30),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(color: borderColor),
                                    primary: bgTwo,
                                    elevation: 0,
                                    textStyle: const TextStyle(fontSize: 20)),
                                onPressed: () {
                                  setState(() {
                                    _isConnected = false;
                                  });
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Text(
                                    'Disconnect',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              )
            : Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                      child: SvgPicture.asset("assets/map.svg",
                          width: MediaQuery.of(context).size.width)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/umbrella.svg",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Protect your \n privacy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/earth.svg",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Accesss any \n Content",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/speed.svg",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Accelerate \n Network",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isConnected = true;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: colorTwo),
                                  shape: BoxShape.circle,
                                  gradient: RadialGradient(
                                    colors: [colorTwo, colorOne],
                                    stops: [0.3, 1],
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Icon(
                                  Icons.power_settings_new_rounded,
                                  size: 80,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text("Click to Connect",
                              style: TextStyle(color: colorTwo))
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: bgTwo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20)
                              )
                            ),
                            builder: (context){
                              return bottomSheet(context,setCountry);
                            }
                          );
                          
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: colorTwo)),
                          child: _isConnected?  ListTile(
                            leading: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage("assets/flags/$_connectedCountry.png")),
                            title: Text(_connectedCountry,
                                style: TextStyle(color: colorTwo)),
                            trailing: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: colorTwo,
                              size: 20,
                            ),
                          ): "Select Country".text.xl.white.make().centered(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
      ),
      drawer: Drawer(
        backgroundColor: bgTwo,
        child: SafeArea(
            child: ListView(
          children: [
            DrawerHeader(
                    decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            color: bgOne,
                            borderRadius: BorderRadius.circular(4)),
                        currentAccountPicture: CircleAvatar(),
                        accountName: "John".text.xl2.textStyle(TextStyle(color:Colors.white)).make(),
                        accountEmail:
                            "john2929@gamil.com".text.xl.make()))
                .p(8)
                .h(230),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              title: "Profile".text.white.xl.make(),
              tileColor: borderColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              trailing: Icon(
                Icons.chevron_right_sharp,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {},
            ).px(8)
          ],
        )),
      ),
    );
  }
}

Widget bottomSheet(context,setC){
  return Container(
    child: ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("France");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/France.png",height: 40,),
            title: "France".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Germany");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Germany.png",height: 40,),
            title: "Germany".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Indonesia");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Indonesia.png",height: 40,),
            title: "Indonesia".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Italy");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Italy.png",height: 40,),
            title: "Italy".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Malaysia");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Malaysia.png",height: 40,),
            title: "Malaysia".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Spain");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Spain.png",height: 40,),
            title: "Spain".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("Turkey");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/Turkey.png",height: 40,),
            title: "Trukey".text.xl.make(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: ListTile(
            onTap: (){
             setC("United-States");
             Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            tileColor: borderColor,
            textColor: Colors.white,
            horizontalTitleGap: 80,
            leading: Image.asset("assets/flags/United-States.png",height: 40,),
            title: "United States".text.xl.make(),
          ),
        ),
      ],
    ),
  );
}