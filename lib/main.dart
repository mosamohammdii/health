import 'dart:ui';

import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/screens/baskt_cart.dart';

import 'package:apple_shop/screens/category_screen.dart';
import 'package:apple_shop/screens/health_tracker.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:apple_shop/screens/login_page.dart';
import 'package:apple_shop/screens/slider.dart';
import 'package:apple_shop/screens/sport_details.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyWidget());
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intro(),
    );
  }
}

class bOTTOM extends StatefulWidget {
   bOTTOM({super.key});

  @override
  State<bOTTOM> createState() => _bOTTOMState();
}

class _bOTTOMState extends State<bOTTOM> {
  int selectedBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: IndexedStack(
        index: selectedBottomNavigationIndex,
        children: getScreens(),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedBottomNavigationIndex = index;
              });
            },
            currentIndex: selectedBottomNavigationIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'sb', fontSize: 10, color: CustomColors.blue),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'sb', fontSize: 10, color: Colors.black),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_profile.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_profile_active.png'),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 13))
                      ]),
                    ),
                  ),
                  label: 'حساب کاربری'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_basket.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_basket_active.png'),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 13))
                      ]),
                    ),
                  ),
                  label: 'سبد خرید'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child: Image.asset('assets/images/icon_home_active.png'),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 13))
                      ]),
                    ),
                  ),
                  label: 'خانه'),
            ],
          ),
        ),));
  }
}


  List<Widget> getScreens() {
    return <Widget>[
      Basketcard(),
      LoginPage(),
      HomePage(),
    ];
  }


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HealthTracker();
                      },
                    ));
                  },
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                            "پزشکی سلامت",
                            style: TextStyle(
                                fontFamily: "SB",
                                fontSize: 20,
                                color: Color.fromARGB(255, 58, 57, 57)),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 70,
                              height: 70,
                              child: Image.asset("assets/images/digi_plus.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SportDtilas();
                      },
                    ));
                  },
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                            "ورزش سلامت",
                            style: TextStyle(
                                fontFamily: "SB",
                                fontSize: 20,
                                color: Color.fromARGB(255, 58, 57, 57)),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 70,
                              height: 70,
                              child: Image.asset("assets/images/digi_pay.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
