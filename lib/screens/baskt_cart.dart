import 'package:apple_shop/constants/color.dart';
import 'package:flutter/material.dart';

class Basketcard extends StatelessWidget {
  const Basketcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 44, bottom: 32),
              child: Container(
                height: 46,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset('assets/images/icon_apple_blue.png'),
                    const Expanded(
                      child: Text(
                        "سبد خرید",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'sb',
                            fontSize: 16,
                            color: CustomColors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 340,
              height: 326,
            ),
          ],
        ),
      ),
    );
  }
}
