import 'package:apple_shop/constants/color.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 229, 229),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Padding(
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
                        " دارو",
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
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                const Text("دراوی قلب"),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 340,
              height: 284,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
