import 'package:flutter/material.dart';

class SliderBaner extends StatelessWidget {
  const SliderBaner({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            );
  }
}