import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';

import 'product_detail_screen.dart';

class Detiles extends StatelessWidget {
  const Detiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(child: Image.asset('assets/images/sra.jpg')),
         
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              " سرطان شامل انواع تومورهای بدخیم می‌شود که در پزشکی آنها را بیشتر با نام نئوپلاسم می‌شناسند. این اتفاق زمانی می‌افتد که یکی از سلول‌های بدن در اثر عوامل مختلف دچار رشد غیرطبیعی سلول‌های دیگر می‌شود",
            ),
          ),
         
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ProductDetailScreen();
                      },
                    ));
                  },
                  child: ProductItem(
                    index: index,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
