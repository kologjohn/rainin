import 'package:flutter/material.dart';
import 'package:raininn/widgets/menu_type.dart';
import 'package:raininn/widgets/slide_tile.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/featured_product.dart';
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  bool show=false;
  bool editShow=true;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.lightGreen[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.email, size: 18,),
                        const SizedBox(width: 8,),
                        const Text("info@raininn.com"),
                        const SizedBox(width: 10),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.location_pin, size: 18,),
                        const SizedBox(width: 8),
                        const Text("Along the commercial street, Bolgatanga"),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/facebook.svg", width: 20, height: 20,),
                            const SizedBox(width: 18,),
                            SvgPicture.asset("assets/svg/twitterbird.svg", width: 20, height: 20,),
                            const SizedBox(width: 18,),
                            SvgPicture.asset("assets/svg/linkedin.svg", width: 20, height: 20,),
                            const SizedBox(width: 18,),
                            SvgPicture.asset("assets/svg/pinterest.svg", width: 20, height: 20,),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        Row(
                          children: [
                            Image.asset("assets/images/ghana.png", height: 20, width: 20,),
                            const SizedBox(width: 8),
                            const Text("Ghana"),
                            const Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        const Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 8),
                            Text("Login")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 15),
                  child: Container(
                    color: Colors.white,
                    //height: 10000,
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     Text("RAIN INN MALL",
                        //       style: TextStyle(
                        //         fontSize: 25
                        //       ),
                        //     )
                        //   ],
                        // ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      //color: Colors.lightBlue[50],
                                      height: 50,
                                      child: Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(left: 20.0),
                                                        child: Text(
                                                          "RAIN INN MALL",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                      )
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    //color: Colors.lightBlue[50],
                                    height: 50,
                                    child:  Column(
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children:  const [
                                              Row(
                                                children: [
                                                  MenuType(
                                                      isSelected: true,
                                                      coffeeType: "HOME"
                                                  ),
                                                  SizedBox(width: 40),
                                                  MenuType(
                                                      isSelected: false,
                                                      coffeeType: "SHOP"
                                                  ),
                                                  SizedBox(width: 40),
                                                  MenuType(
                                                      isSelected: false,
                                                      coffeeType: "PAGES"
                                                  ),
                                                  SizedBox(width: 40),
                                                  MenuType(
                                                      isSelected: false,
                                                      coffeeType: "BLOG"
                                                  ),
                                                  SizedBox(width: 40),
                                                  MenuType(
                                                      isSelected: false,
                                                      coffeeType: "CONTACT"
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: SizedBox(
                                      height: 50,
                                      //color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.favorite),
                                          Icon(Icons.shopping_cart),
                                          Text("Item: 500")
                                        ],
                                      ),
                                    )
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.white,
                                  height: 600,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: ()async{
                                          setState(() {
                                            if (editShow==true)
                                            {
                                              editShow=false;
                                            }
                                            else {
                                              editShow=true;
                                            }
                                            //editShow=false;
                                          });
                                        },
                                        child: Container(
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
                                                        "ALL DEPARTMENTS",
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
                                      ),
                                      Visibility(
                                        visible: editShow,
                                        child: Container(
                                          color: Colors.white,
                                          height: 550,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                                            child: ListView(
                                              scrollDirection: Axis.vertical,
                                              children:   [
                                                const MenuType(
                                                    isSelected: true,
                                                    coffeeType: "MEAT"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "VEGETABLES"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "ELECTRONICSS"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "FRUITS"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "FAST FOODS"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "BUTTER EGG"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "OCEAN FOODS"
                                                ),
                                                Divider(thickness: 1,color: Colors.grey[200],),
                                                const SizedBox(height: 20),
                                                const MenuType(
                                                    isSelected: false,
                                                    coffeeType: "FRESH BERRIES"
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                color: Colors.white,
                                                height: 50,
                                                child:  Padding(
                                                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Text("All Categories", style: TextStyle(fontWeight: FontWeight.bold),),
                                                          const SizedBox(width: 20),
                                                          const Icon(Icons.arrow_drop_down),
                                                          const SizedBox(width: 30),
                                                          const SizedBox(
                                                            height: 50,
                                                            width: 300,
                                                            child: Column(
                                                              children: [
                                                                TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText: 'What do you need?',
                                                                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 50,
                                                            width: 100,
                                                            color: Colors.orange,
                                                            child: const Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Text("Search", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          CircleAvatar(
                                                            backgroundColor: Colors.lightGreen[50],
                                                            child: const Icon(
                                                              Icons.call, color: Colors.orange,
                                                            ),
                                                          ),
                                                          const SizedBox(width: 12),
                                                          const Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text("+122 553 354 349", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("support 24/7 time", style: TextStyle(color: Colors.black54),),
                                                            ],
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    color: Colors.lightBlue[50],
                                    height: 530,
                                    child:  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 70.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "FRUIT FRESH",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 25
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Text(
                                                    "VEGETABLE",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 40
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  const Text(
                                                    "100% ORGANIC",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 40
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Text(
                                                    "Free pickup delivery available",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 25
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  ElevatedButton(
                                                    onPressed: (){},
                                                    style: ButtonStyle(
                                                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                                                        if (states.contains(MaterialState.pressed)) {
                                                          return Colors.orange.withOpacity(0.5); // Color when pressed
                                                        }
                                                        return Colors.orange; // Default color
                                                      }),
                                                    ),
                                                    child: const Text("SHOP NOW", style: TextStyle(color: Colors.white),),
                                                  )

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset("assets/images/chair.png",height: 400,)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Divider(
                          thickness: 10,
                          color: Colors.grey[200],
                        ),
                        const SizedBox(height: 30),
                        const SizedBox(
                          height: 320,
                          //color: Colors.red,
                          child: ScrollLoopAutoScroll(
                            scrollDirection: Axis.horizontal,
                            delay: Duration(seconds: 4),
                            duration: Duration(seconds: 50),
                            gap: 25,
                            reverseScroll: false,
                            duplicateChild : 25,
                            enableScrollInput : false,
                            delayAfterScrollInput : Duration(seconds: 4),
                            child:  SlideTile(
                                slideImagePath: "assets/images/chair.png",
                                slideName: "Stuffing Chair",
                                slidePrice: "500.00"
                            ),
                            // child: ListView(
                            //   addAutomaticKeepAlives: true,
                            //   scrollDirection: Axis.horizontal,
                            //   children: const [
                            //
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //     SlideTile(
                            //         slideImagePath: "assets/images/chair.png",
                            //         slideName: "Stuffing Chair",
                            //         slidePrice: "500.00"
                            //     ),
                            //   ],
                            // ),
                          ),
                        ),
                        Divider(
                          thickness: 10,
                          color: Colors.grey[200],
                        ),
                        const SizedBox(height: 50),
                        const Column(
                          children: [
                            Text("FEATURED PRODUCTS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                            Divider(
                              color: Colors.orange,
                              indent: 600,
                              endIndent: 600,
                              thickness: 5,
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //scrollDirection: Axis.horizontal,
                                children: [
                                  MenuType(
                                      isSelected: true,
                                      coffeeType: "ALL"
                                  ),
                                  SizedBox(width: 20),
                                  MenuType(
                                      isSelected: false,
                                      coffeeType: "ELECTRONICS"
                                  ),
                                  SizedBox(width: 20),
                                  MenuType(
                                      isSelected: false,
                                      coffeeType: "WINE"
                                  ),
                                  SizedBox(width: 20),
                                  MenuType(
                                      isSelected: false,
                                      coffeeType: "VEGETABLES"
                                  ),
                                  SizedBox(width: 20),
                                  MenuType(
                                      isSelected: false,
                                      coffeeType: "FRUITS"
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GridView.builder(
                                shrinkWrap: true,
                                itemCount: 8,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,),
                                itemBuilder: (context, index)=>const featured_product(
                                    featuredImage: 'assets/images/chair.png',
                                    featuredName: 'Stuffing Chair',
                                    featuredPrice: '400.00')
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Divider(
                          thickness: 10,
                          color: Colors.grey[200],
                        ),
                        const SizedBox(height: 80),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  height: 300,
                                  color: Colors.lightBlue[50],
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset("assets/images/chair.png", height: 300, width: 300,)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "SUMMER FRUIT",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 20
                                                  ),
                                                ),
                                                //const SizedBox(height: 8),
                                                const Text(
                                                  "100% Pure Natural Fruit",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20
                                                  ),
                                                ),
                                                //const SizedBox(height: 20),
                                                ElevatedButton(
                                                  onPressed: (){},
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        return Colors.orange.withOpacity(0.5); // Color when pressed
                                                      }
                                                      return Colors.orange; // Default color
                                                    }),
                                                  ),
                                                  child: const Text("SHOP NOW", style: TextStyle(color: Colors.white),),
                                                )

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                                child: Container(
                                  height: 300,
                                  color: Colors.lightGreen[50],
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset("assets/images/chair.png", height: 300, width: 300,)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "SUMMER FRUIT",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 20
                                                  ),
                                                ),
                                                //const SizedBox(height: 8),
                                                const Text(
                                                  "100% Pure Natural Fruit",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20
                                                  ),
                                                ),
                                                //const SizedBox(height: 20),
                                                ElevatedButton(
                                                  onPressed: (){},
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        return Colors.orange.withOpacity(0.5); // Color when pressed
                                                      }
                                                      return Colors.orange; // Default color
                                                    }),
                                                  ),
                                                  child: const Text("SHOP NOW", style: TextStyle(color: Colors.white),),
                                                )

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Divider(
                          thickness: 10,
                          color: Colors.grey[200],
                        ),
                        const SizedBox(height: 80),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  height: 700,
                                  color: Colors.white,
                                  child: const Column(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("LATEST PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                      SizedBox(height: 18),
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
                                              SlideTile(
                                                  slideImagePath: "assets/images/chair.png",
                                                  slideName: "Stuffing Chair",
                                                  slidePrice: "500.00"
                                              ),
                                            ],
                                          ),
                                          // child: ListView(
                                          //   addAutomaticKeepAlives: true,
                                          //   scrollDirection: Axis.horizontal,
                                          //   children: const [
                                          //
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //   ],
                                          // ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                                child: Container(
                                  height: 700,
                                  color: Colors.white,
                                  child: const Column(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("TOP RATED PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                      SizedBox(height: 18),
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
                                              SlideTile(
                                                  slideImagePath: "assets/images/chair.png",
                                                  slideName: "Stuffing Chair",
                                                  slidePrice: "500.00"
                                              ),
                                            ],
                                          ),
                                          // child: ListView(
                                          //   addAutomaticKeepAlives: true,
                                          //   scrollDirection: Axis.horizontal,
                                          //   children: const [
                                          //
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //   ],
                                          // ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                                child: Container(
                                  height: 700,
                                  color: Colors.white,
                                  child: const Column(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("REVIEW PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                      SizedBox(height: 18),
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
                                              SlideTile(
                                                  slideImagePath: "assets/images/chair.png",
                                                  slideName: "Stuffing Chair",
                                                  slidePrice: "500.00"
                                              ),
                                            ],
                                          ),
                                          // child: ListView(
                                          //   addAutomaticKeepAlives: true,
                                          //   scrollDirection: Axis.horizontal,
                                          //   children: const [
                                          //
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //     SlideTile(
                                          //         slideImagePath: "assets/images/chair.png",
                                          //         slideName: "Stuffing Chair",
                                          //         slidePrice: "500.00"
                                          //     ),
                                          //   ],
                                          // ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Divider(
                          thickness: 10,
                          color: Colors.grey[200],
                        ),
                        const Column(
                          children: [
                            Text("FROM THE BLOG", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                            Divider(
                              color: Colors.orange,
                              indent: 600,
                              endIndent: 600,
                              thickness: 5,
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                                  height: 600,
                                  //color: Colors.red,
                                  child: Column(
                                    children: [
                                      Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                      const SizedBox(height: 18),
                                      const Row(
                                        children: [
                                          Icon(Icons.calendar_today, size: 18,),
                                          SizedBox(width: 4),
                                          Text("February 18, 2024"),
                                          SizedBox(width: 20),
                                          Row(
                                            children: [
                                              Icon(Icons.comment, size: 18,),
                                              SizedBox(width: 4),
                                              Text("10")
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("Stuffing is the soft material inside pillows, "
                                              "\n mattresses, or sofa cushions. Without stuffing, "
                                              "\n your comfy chair wouldn't be very comfy.",
                                            style: TextStyle(color: Colors.black54),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                                child: SizedBox(
                                  height: 600,
                                  //color: Colors.red,
                                  child: Column(
                                    children: [
                                      Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                      const SizedBox(height: 18),
                                      const Row(
                                        children: [
                                          Icon(Icons.calendar_today, size: 18,),
                                          SizedBox(width: 4),
                                          Text("February 18, 2024"),
                                          SizedBox(width: 20),
                                          Row(
                                            children: [
                                              Icon(Icons.comment, size: 18,),
                                              SizedBox(width: 4),
                                              Text("10")
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("Stuffing is the soft material inside pillows, "
                                              "\n mattresses, or sofa cushions. Without stuffing, "
                                              "\n your comfy chair wouldn't be very comfy.",
                                            style: TextStyle(color: Colors.black54),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                                child: SizedBox(
                                  height: 600,
                                  //color: Colors.red,
                                  child: Column(
                                    children: [
                                      Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                      const SizedBox(height: 18),
                                      const Row(
                                        children: [
                                          Icon(Icons.calendar_today, size: 18,),
                                          SizedBox(width: 4),
                                          Text("February 18, 2024"),
                                          SizedBox(width: 20),
                                          Row(
                                            children: [
                                              Icon(Icons.comment, size: 18,),
                                              SizedBox(width: 4),
                                              Text("10")
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Text("Stuffing is the soft material inside pillows, "
                                              "\n mattresses, or sofa cushions. Without stuffing, "
                                              "\n your comfy chair wouldn't be very comfy.",
                                            style: TextStyle(color: Colors.black54),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              Container(
                height: 400,
                color: Colors.lightGreen[50],
                child:  Padding(
                  padding: const EdgeInsets.only(left: 300.0, right: 300, top: 50),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                              child: SizedBox(
                                height: 200,
                                //color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("RAIN INN MALL", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),),
                                    SizedBox(height: 20),
                                    Text("Address: Commercial Street, Bolgatanga"),
                                    SizedBox(height: 15),
                                    Text("Phone: +122 553 354 349"),
                                    SizedBox(height: 15),
                                    Text("Email: raininn@gmail.com"),
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                              child: SizedBox(
                                height: 250,
                                //color: Colors.red,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("USEFUL LINKS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("About Us"),
                                          Text("Who We Are"),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Secure Products"),
                                          Text("Project"),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("About Our Shop"),
                                          Text("Our Services"),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Privacy And Policy"),
                                          Text("SiteMap"),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Delivery Information"),
                                          Text("Contact"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                              child: SizedBox(
                                height: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text("JOIN OUR NEWSLETTER NOW", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                                    const SizedBox(height: 20),
                                    const Text("Get E-mail updates about our latest shop and special offers."),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        const Expanded(
                                            flex: 2,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: 'Enter your mail',
                                                  fillColor: Colors.white,
                                                  filled: true
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              height: 50,
                                              color: Colors.orange,
                                              child: const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("SUBSCRIBE"),
                                                ],
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SvgPicture.asset("assets/svg/facebook.svg", width: 20, height: 20,),
                                        const SizedBox(width: 18,),
                                        SvgPicture.asset("assets/svg/twitterbird.svg", width: 20, height: 20,),
                                        const SizedBox(width: 18,),
                                        SvgPicture.asset("assets/svg/linkedin.svg", width: 20, height: 20,),
                                        const SizedBox(width: 18,),
                                        SvgPicture.asset("assets/svg/pinterest.svg", width: 20, height: 20,),
                                      ],
                                    ),
                                  ],
                                ),
                                //color: Colors.red,
                              )
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text('Copyright ©2024 All rights reserved', style: TextStyle(fontSize: 15),),
                              SizedBox(width: 10),
                              Text('|'),
                              SizedBox(width: 10),
                              Text('Powered By KologSoft', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/visa1.png", height: 50,),
                              const SizedBox(width: 10),
                              Image.asset("assets/images/PayPal.png", height: 50,),
                              const SizedBox(width: 10),
                              Image.asset("assets/images/MasterCard1.png", height: 50,),
                              //Image.asset("assets/images/payout.png", height: 100,)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
