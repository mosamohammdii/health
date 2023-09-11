import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 400,
              child: PageView.builder(
                controller: controller,
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/images.png"),
                      ),
                    ),
                    width: 200,
                    height: 20,
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Your convenience in making a todo list"),
                          Text(
                              "Here's a mobile platform that helps you create task or to list so that it can help you in every job easier and faster."),
                        ]),
                  ),
                ),
              ),
            ),
           SmoothPageIndicator(  
   controller: controller,  
   count:  6,  
   axisDirection: Axis.vertical,  
   effect:  SlideEffect(  
      spacing:  8.0,  
      radius:  4.0,  
      dotWidth:  24.0,  
      dotHeight:  16.0,  
      paintStyle:  PaintingStyle.stroke,  
      strokeWidth:  1.5,  
      dotColor:  Colors.grey,  
      activeDotColor:  Colors.indigo  
   ),  
) ,
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("containue"),
                style: Theme.of(context).elevatedButtonTheme.style,
              ),
            )
          ],
        ),
      ),
    );
  }
}
