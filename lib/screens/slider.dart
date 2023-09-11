import 'package:apple_shop/main.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:apple_shop/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';



class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
       IntroductionSliderItem(
  logo: Image.asset("assets/images/mamoriyat_ha.png"),
  title: Text("نبض سلامت "),
  subtitle: Text("دسترسی به انواع خدمات سلامت و ورزشی"),
  
    
      
    
    
  
    
  backgroundColor: const Color.fromARGB(255, 233, 225, 224)
),
        IntroductionSliderItem(
  logo: Container(height: 150, child: Image.asset("assets/images/2592258.png")),
  title: Text("امن"),
  subtitle: Text("ایمنی در برابر حملات سایبری   "),
   
  
    
      
    
    

  backgroundColor: const Color.fromARGB(255, 238, 235, 235)
),
        IntroductionSliderItem(
  logo: Image.asset("assets/images/digikala_mehr.png"),
  title: Text("هوشمند "),
  subtitle: Text("سادگی و پر کاربرد در اجرا برنامه"),
  backgroundColor: Color.fromARGB(255, 255, 253, 252)
)
      ],
      done: Done(
        child: Icon(Icons.done),
        home: bOTTOM(),
      ),
      next: Next(child: Icon(Icons.arrow_forward)),
      back: Back(child: Icon(Icons.arrow_back)),
      dotIndicator: DotIndicator(),
    );
  }
}

  