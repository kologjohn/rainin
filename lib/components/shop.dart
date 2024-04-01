import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import '../widgets/featured_product.dart';
import '../widgets/menu_type.dart';
import '../widgets/slide_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 300.0, right: 300, top: 20),
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 1200,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.orange,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 18.0, right: 18),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(Icons.menu, color: Colors.white,),
                                              Text(
                                                "ALL CATEGORIES",
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.arrow_drop_down, size: 30, color: Colors.white,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children:   [
                                        MenuType(
                                            isSelected: true,
                                            coffeeType: "MEAT"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "VEGETABLES"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "ELECTRONICSS"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "FRUITS"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "FAST FOODS"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "BUTTER EGG"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "OCEAN FOODS"
                                        ),
                                        Divider(thickness: 1,color: Colors.grey[200],),
                                        SizedBox(height: 20),
                                        MenuType(
                                            isSelected: false,
                                            coffeeType: "FRESH BERRIES"
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: Column(
                                      children: [
                                        Text("LATEST PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                        //SizedBox(height: 18),
                                        SizedBox(
                                          height: 640,
                                          //color: Colors.red,
                                          child: ScrollLoopAutoScroll(
                                            scrollDirection: Axis.horizontal,
                                            delay: Duration(seconds: 4),
                                            duration: Duration(seconds: 50),
                                            gap: 2,
                                            reverseScroll: false,
                                            duplicateChild : 25,
                                            enableScrollInput : false,
                                            delayAfterScrollInput : Duration(seconds: 4),
                                            child:  Column(
                                              children: [
                                                SlideTile(
                                                    slideImagePath: "assets/images/chair.png",
                                                    slideName: "Stuffing Chair",
                                                    slidePrice: "500.00"
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                          child: Column(
                            children: [
                              Container(
                                //color: Colors.lightGreen[50],
                                height: 50,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                          "Sort by",
                                        style: TextStyle(
                                          fontSize: 15
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      Text(
                                          "Default",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                            fontSize: 15
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: 15,
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                                    itemBuilder: (context, index)=>const featured_product(
                                      featuredImage: 'assets/images/chair.png',
                                      featuredName: 'Stuffing Chair',
                                      featuredPrice: '400.00', pgress: false,),
                                  )
                                ],
                              )
                            ],
                          )
                      )
                    ],
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
