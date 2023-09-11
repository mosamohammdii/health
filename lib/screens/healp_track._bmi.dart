import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/screens/category_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {this.widthGood,
      this.withBad,
      this.resultBMI,
      this.reslutText,
      super.key});
  final resultBMI;
  final reslutText;
  final widthGood;
  final withBad;

  @override
  Widget build(BuildContext context) {
    print(reslutText);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text(
            '${resultBMI.toStringAsFixed(2)}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
          ),
          Text(
            reslutText,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: orangeBackground),
          ),
          SizedBox(
            height: 80,
          ),
          RightShape(
            widht: widthGood,
          ),
          SizedBox(
            height: 15,
          ),
          LeftShape(
            width: withBad,
          ),
          
        ],
      ),
      floatingActionButton: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(228, 51),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // <-- Radius
                  ),
                  backgroundColor: Color(0xff6C56F9)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return CategoryScreen();
                  },
                ));
              },
              child: Text("علت بیماری"))
    ),
    
    
    );
  }
}

class RightShape extends StatelessWidget {
  final double widht;

  const RightShape({Key? key, this.widht = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40,
          width: widht,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            color: orangeBackground,
          ),
        ),
      ],
    );
  }
}

class LeftShape extends StatelessWidget {
  final double width;

  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
