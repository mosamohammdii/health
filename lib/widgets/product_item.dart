import 'package:apple_shop/constants/color.dart';
import 'package:flutter/material.dart';

import '../data/datasource/product_data.dart';

class ProductItem extends StatelessWidget {
  int index;
  ProductItem({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        clipBehavior: Clip.none,
        width: 160,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 150,
                height: 120,
                child: Image.asset(productData[index].imgUrl)),
            const SizedBox(
              height: 12,
            ),
            Text(
              productData[index].title,
              style: TextStyle(fontSize: 16, fontFamily: "SM"),
            ),
            const Spacer(),
            Container(
              height: 53,
              decoration: const BoxDecoration(
                color: CustomColors.blue,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    productData[index].price.toString(),
                    style: TextStyle(
                        fontSize: 18, fontFamily: "GEB", color: Colors.white),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: CustomColors.blue,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
