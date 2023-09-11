import 'dart:math';

import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/screens/healp_track._bmi.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

double widthGood = 100;
double widthBad = 100;
double _value = 40.0;
double _value1 = 40.0;

class HealthTracker extends StatefulWidget {
  const HealthTracker({super.key});

  @override
  State<HealthTracker> createState() => _HealthTrackerState();
}

class _HealthTrackerState extends State<HealthTracker> {
  double resultBMI = 0;
  String reslutText = '';
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "ایا وزن شما مناسب است",
                  style: TextStyle(fontFamily: "SB", fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isActive = true;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? Colors.grey.shade300
                                    : Colors.transparent,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                  "assets/images/businesswoman_business_woman_working_girl 1.png"),
                            ),
                            const Text(
                              "زن",
                              style: TextStyle(fontFamily: "SB", fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isActive = false;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 170,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? Colors.grey.shade300
                                    : Colors.transparent,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                      "assets/images/businessman_man_business 1.png"),
                                ),
                              ),
                            ),
                            const Text(
                              "مرد",
                              style: TextStyle(fontFamily: "SB", fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Text("قد"),
                ],
              ),
              SfSlider(
                max: 200.0,
                min: 20,
                value: _value,
                inactiveColor: Colors.grey.shade300,
                interval: 20,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                activeColor: Colors.black,
                minorTicksPerInterval: 1,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              const Row(
                children: [
                  Text("وزن"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfSlider(
                  min: 0.0,
                  max: 120.0,
                  value: _value1,
                  inactiveColor: Colors.grey.shade300,
                  interval: 20,
                  //   showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (value) {
                    setState(() {
                      _value1 = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: InkWell(
          onTap: () {
            final weight = _value1;
            final height = _value;

            print(_value1);
            print(_value);

            resultBMI = weight / pow(height / 100, 2);

            if (resultBMI > 25) {
              widthGood = 50;
              widthBad = 400;
              reslutText = 'شما اضافه وزن دارید';
            } else if (resultBMI >= 18.5 && resultBMI <= 25) {
              widthGood = 400;
              widthBad = 50;
              reslutText = 'وزن شما نرمال است';
            } else {
              widthGood = 10;
              widthBad = 10;
              reslutText = 'وزن شما کم‌تر از حد نرمال است';
            }
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ResultPage(
                  resultBMI: resultBMI,
                  reslutText: reslutText,
                  widthGood: widthGood,
                  withBad: widthBad,
                );
              },
            ));
          },
          child: Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
