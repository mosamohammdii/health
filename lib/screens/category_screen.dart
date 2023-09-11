import 'dart:ui';

import 'package:apple_shop/constants/color.dart';
import 'package:apple_shop/data/datasource/category_datasource.dart';
import 'package:apple_shop/data/repository/category_repository.dart';
import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/screens/detilas.dart';
import 'package:apple_shop/widgets/cach_newtwork_image.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Category>? list;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: CustomColors.backgroundScreenColor,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 44, right: 44, bottom: 32),
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
                              "بیماری ها",
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
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Detiles();
                                },
                              ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        dataCategory[index].thumbnail,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  dataCategory[index].title,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }, childCount: 6),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 20,
                            childAspectRatio: 3 / 5),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
