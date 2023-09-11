


import 'package:flutter/material.dart';

class ListSportScreen extends StatelessWidget {
  const ListSportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Expanded(
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                           "سامبو",
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
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Expanded(
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                           "گشتی فرنگی",
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
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Expanded(
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                           "پینت بال",
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
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Expanded(
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                           "موتای",
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
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Expanded(
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                              child: Text(
                           "کشتی ازاد",
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}