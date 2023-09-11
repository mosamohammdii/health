import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SafeArea(
        child: Column(
          children: [
            Text("ایفون 2022"),
            Container(
              width: 340,
              height: 326,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
