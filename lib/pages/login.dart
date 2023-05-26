// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wolly_vpn/constants/constants.dart';
import 'package:wolly_vpn/pages/signup.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: appBarOne,

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(35),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: colorOne,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: bgOne),
                    ),
                    Text("Let's Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white)),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      child: Text(
                        "User Name",
                        style: textstyleone,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorTwo,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorTwo,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      child: Text(
                        "Password",
                        style: textstyleone,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorTwo,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorTwo,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: colorTwo, elevation: 1),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Log In", style: TextStyle(fontSize: 20)),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have Account?",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, "/signup", (route) => false);                       
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: bgOne, fontSize: 12),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
