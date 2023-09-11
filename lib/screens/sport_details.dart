import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/screens/list_sport_page.dart';

import 'package:apple_shop/test/google_map.dart';
import 'package:flutter/material.dart';

class SportDtilas extends StatelessWidget {
  const SportDtilas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ListSportScreen();
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
                          "رشته ورزشی",
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
                            child:
                                Image.asset("assets/images/digikala_mehr.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
         
          ]),
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
                            "استعدا یابی",
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return  GoogleMapScreen();
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
                          const  Center(
                            child: Text(
                          "نزدیک امکان ورزشی",
                          style: TextStyle(
                              fontFamily: "SB",
                              fontSize: 20,
                              color: Colors.white),
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
          const SizedBox(
            height: 20,
          ),
         
         
       
        ],
      ),
    );
  }
}
