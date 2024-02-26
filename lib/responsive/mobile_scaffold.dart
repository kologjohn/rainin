import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import '../widgets/menu_type.dart';
import '../widgets/slide_tile.dart';
import '../widgets/tablet_featured_product.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  bool show=false;
  bool editShow=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Text(
              "RAININN MALL",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
        //title: const Text("APPBAR"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                child: Text(
                  "RAIN INN MALL",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                  ),
                ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.favorite),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_bag),
                  SizedBox(width: 20),
                  Text("Item:"),
                  SizedBox(width: 10),
                  Text("500.00"),
                ],
              ),
            ),
            //const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/ghana.png", height: 20, width: 20,),
                      const SizedBox(width: 8),
                      const Text("Ghana"),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text("Login")
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const ExpansionTile(
              leading: Icon(Icons.menu, color: Colors.white54,),
                title: Text("MENU", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              collapsedIconColor: Colors.white54,
              childrenPadding: EdgeInsets.only(left: 30),
              collapsedBackgroundColor: Colors.black54,
              backgroundColor: Colors.grey,
              children: [
                ListTile(
                  title: MenuType(isSelected: true, coffeeType: 'HOME'),
                ),
                ListTile(
                  title: MenuType(isSelected: false, coffeeType: 'SHOP'),
                ),
                ListTile(
                  title: MenuType(isSelected: false, coffeeType: 'BLOG'),
                ),
                ListTile(
                  title: MenuType(isSelected: false, coffeeType: 'CONTACT'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
           // const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.email, size: 18,),
                  SizedBox(width: 8,),
                  Text("info@raininn.com"),
                ],
              ),
            ),
            //const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_pin, size: 18,),
                  SizedBox(width: 8),
                  Text("Along the commercial street, Bolga"),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 50,
            //   color: Colors.lightGreen[50],
            //   child: const Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Row(
            //         children: [
            //           Icon(Icons.email, size: 18,),
            //           SizedBox(width: 8,),
            //           Text("info@raininn.com"),
            //           SizedBox(width: 10),
            //           Icon(Icons.location_pin, size: 18,),
            //           SizedBox(width: 8),
            //           Text("Bolgatanga"),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Icon(Icons.facebook, size: 18,),
            //           SizedBox(width: 12,),
            //           Icon(Icons.facebook, size: 18,),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Expanded(
                  //             child: Container(
                  //               height: 50,
                  //               //color: Colors.red,
                  //               child:  Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 children: [
                  //                   const Text(
                  //                     "RAININN MALL",
                  //                     style: TextStyle(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.w600
                  //                     ),
                  //                   ),
                  //                   InkWell(
                  //                     onTap: (){
                  //                       SideBar();
                  //                       print("object");
                  //                     },
                  //                       child: const Icon(
                  //                         Icons.menu, size: 40,
                  //                       )
                  //                   )
                  //                 ],
                  //               ),
                  //             )
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 20,),
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10),
                          Icon(Icons.shopping_bag),
                          SizedBox(width: 20),
                          Text("Item:"),
                          SizedBox(width: 10),
                          Text("500.00"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                                onTap: ()async{
                                  setState(() {
                                    if(show==false)
                                      {
                                        show=true;
                                      }
                                    else if(show==true)
                                    {
                                      show=false;
                                    }

                                    //print("success");
                                  });
                                },
                                child: Container(
                                  color: Colors.orange,
                                  height: 50,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 20.0, right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
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
                                        Row(
                                          children: [
                                            Icon(Icons.arrow_drop_down, size: 30, color: Colors.white,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Visibility(
                                visible: show,
                                child: Container(
                                  height: 500,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20.0,top: 20),
                                        child: SizedBox(height: 300,
                                          child: ListView(
                                            scrollDirection: Axis.vertical,
                                            children:  [
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
                                    ],
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              flex: 2,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'What do you want?',
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
                                    Text("SEARCH"),
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.lightGreen[50],
                            child: const Icon(
                                Icons.call
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
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.lightGreen[50],
                            height: 400,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset("assets/images/chair.png", fit: BoxFit.cover,),
                                Center(
                                  child: Container(
                                    height: 300,
                                    color: Colors.lightBlue.withOpacity(0.2),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "FRUIT FRESH",
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          "VEGETABLE",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 35
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text(
                                          "100% ORGANIC",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 35
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          "Free pickup delivery available",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
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
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 320,
                    //color: Colors.red,
                    child: ScrollLoopAutoScroll(
                      scrollDirection: Axis.horizontal,
                      delay: Duration(seconds: 4),
                      duration: Duration(seconds: 50),
                      gap: 0,
                      reverseScroll: false,
                      duplicateChild : 25,
                      enableScrollInput : false,
                      delayAfterScrollInput : Duration(seconds: 4),
                      child:  SlideTile(
                          slideImagePath: "assets/images/chair.png",
                          slideName: "Stuffing Chair",
                          slidePrice: "500.00"
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const Text("FEATURED PRODUCTS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      const Divider(
                        color: Colors.orange,
                        indent: 100,
                        endIndent: 100,
                        thickness: 5,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            MenuType(
                                isSelected: true,
                                coffeeType: "ALL"
                            ),
                            SizedBox(width: 8),
                            MenuType(
                                isSelected: false,
                                coffeeType: "ELECTRONICS"
                            ),
                            SizedBox(width: 8),
                            MenuType(
                                isSelected: false,
                                coffeeType: "WINE"
                            ),
                            SizedBox(width: 8),
                            MenuType(
                                isSelected: false,
                                coffeeType: "VEGETABLES"
                            ),
                            SizedBox(width: 8),
                            MenuType(
                                isSelected: false,
                                coffeeType: "FRUITS"
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TabletFeaturedProduct(
                              featuredImage: 'assets/images/chair.png',
                              featuredName: 'Stuffing Chair',
                              featuredPrice: '400.00'
                          ),
                          SizedBox(height: 10),
                          TabletFeaturedProduct(
                              featuredImage: 'assets/images/chair.png',
                              featuredName: 'Stuffing Chair',
                              featuredPrice: '400.00'
                          ),
                          SizedBox(height: 10),
                          TabletFeaturedProduct(
                              featuredImage: 'assets/images/chair.png',
                              featuredName: 'Stuffing Chair',
                              featuredPrice: '400.00'
                          ),
                          SizedBox(height: 10),
                          TabletFeaturedProduct(
                              featuredImage: 'assets/images/chair.png',
                              featuredName: 'Stuffing Chair',
                              featuredPrice: '400.00'
                          ),
                          SizedBox(height: 10),
                          TabletFeaturedProduct(
                              featuredImage: 'assets/images/chair.png',
                              featuredName: 'Stuffing Chair',
                              featuredPrice: '400.00'
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 200,
                            color: Colors.lightBlue[50],
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("assets/images/chair.png", height: 180, width: 180,)
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "STUFFING CHAIR",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            "Quality And Durable",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12
                                            ),
                                          ),
                                          const SizedBox(height: 15),
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
                                            child: const Text("SHOP NOW", style: TextStyle(color: Colors.white, fontSize: 10),),
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
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 200,
                            color: Colors.lightGreen[50],
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("assets/images/chair.png", height: 180, width: 180,)
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "STUFFING CHAIR",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            "Quality And Durable",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12
                                            ),
                                          ),
                                          const SizedBox(height: 15),
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
                                            child: const Text("SHOP NOW", style: TextStyle(color: Colors.white, fontSize: 10),),
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
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 700,
                            child: const Column(
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
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 700,
                            child: const Column(
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
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 700,
                            child: const Column(
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
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Column(
                    children: [
                      Text("FROM THE BLOG", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      Divider(
                        color: Colors.orange,
                        indent: 120,
                        endIndent: 120,
                        thickness: 5,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 600,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                const SizedBox(height: 10),
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
                                const SizedBox(height: 15),
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
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 600,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                const SizedBox(height: 10),
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
                                const SizedBox(height: 15),
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
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 600,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 400,width: 400,),),
                                const SizedBox(height: 10),
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
                                const SizedBox(height: 15),
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
            ),
            Container(
              height: 650,
              color: Colors.lightGreen[50],
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("RAIN INN MALL", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                            SizedBox(height: 8),
                            Text("Address: Commercial Street, Bolgatanga"),
                            SizedBox(height: 6),
                            Text("Phone: +122 553 354 349"),
                            SizedBox(height: 6),
                            Text("Email: raininn@gmail.com"),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("USEFUL LINKS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About Us"),
                            Text("Who We Are"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Secure Products"),
                            Text("Project"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About Our Shop"),
                            Text("Our Services"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Privacy And Policy"),
                            Text("SiteMap"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Information"),
                            Text("Contact"),
                          ],
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("JOIN OUR NEWSLETTER NOW", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                        SizedBox(height: 20),
                        Text("Get E-mail updates about our latest shop and special offers."),
                      ],
                    ),
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
                    const SizedBox(height: 12,),
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
                    const SizedBox(height: 20),
                    const Divider(),
                    const Column(
                      children: [
                        Text('Copyright ©2024 All rights reserved.', style: TextStyle(fontSize: 15),),
                        SizedBox(width: 10),
                        Text('Powered By KologSoft', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
