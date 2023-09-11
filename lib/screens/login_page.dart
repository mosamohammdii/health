import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/main.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text("ورورد",
                    style: TextStyle(fontFamily: "SB", fontSize: 25)),
                Expanded(
                    child: Container(
                  height: 300,
                  decoration: BoxDecoration(),
                )),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 750,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF3F2FC),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Image.asset(
                                        "assets/images/icon_profile_active.png"),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: 'نام خود را وارد کنید',
                                labelStyle:
                                    TextStyle(fontFamily: "SB", fontSize: 17),
                                hintStyle:
                                    TextStyle(fontFamily: "SB", fontSize: 17),
                                filled: true,
                                fillColor: Color(0xffFBFBFD),
                                hintText: 'نام خدروارد کمنید'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Row(children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF3F2FC),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Icon(
                                        Icons.email,
                                        color: CustomColors.blue,
                                      ),
                                    ),
                                  )
                                ]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: 'نام خود را وارد کنید',
                                labelStyle:
                                    TextStyle(fontFamily: "SB", fontSize: 17),
                                hintStyle:
                                    TextStyle(fontFamily: "SB", fontSize: 17),
                                filled: true,
                                fillColor: Color(0xffFBFBFD),
                                hintText: 'نام خدروارد کمنید'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Row(children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF3F2FC),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Icon(
                                        Icons.lock,
                                        color: CustomColors.blue,
                                      ),
                                    ),
                                  )
                                ]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: 'نام خود را وارد کنید',
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Color(0xffFBFBFD),
                                hintText: 'نام خدروارد کمنید'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Row(children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF3F2FC),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Icon(
                                        Icons.lock,
                                        color: CustomColors.blue,
                                      ),
                                    ),
                                  )
                                ]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: 'نام خود را وارد کنید',
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Color(0xffFBFBFD),
                                hintText: 'نام خدروارد کمنید'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                
                            },
                            child: Text("ثبت نام",style:  TextStyle(fontFamily: "SB", fontSize: 17)),
                            style: ElevatedButton.styleFrom(
                                
                                minimumSize: Size(228, 51),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Color(0xff6C56F9)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
