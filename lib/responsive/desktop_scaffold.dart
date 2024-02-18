import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raininn/widgets/drawer.dart';
import 'package:raininn/widgets/menu_type.dart';
import 'package:raininn/widgets/slide_tile.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: false,

          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.lightGreen[50],
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.email, size: 18,),
                        SizedBox(width: 8,),
                        Text("info@raininn.com"),
                        SizedBox(width: 10),
                        Icon(Icons.location_pin, size: 18,),
                        SizedBox(width: 8),
                        Text("Along the commercial street, Bolgatanga"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.facebook, size: 18,),
                        SizedBox(width: 12,),
                        Icon(Icons.facebook, size: 18,),
                        SizedBox(width: 12,),
                        Icon(Icons.facebook, size: 18,),
                        SizedBox(width: 12,),
                        Icon(Icons.facebook, size: 18,),
                        SizedBox(width: 12,),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 20),
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
                            Expanded(
                              flex: 2,
                                child: Container(
                                  //color: Colors.lightBlue[50],
                                  height: 50,
                                  child: const Column(
                                    children: [
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("RAIN INN MALL", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                            const SizedBox(width: 10),
                            Expanded(
                                flex: 5,
                                child: Container(
                                    //color: Colors.lightBlue[50],
                                    height: 50,
                                  child:  Column(
                                    children: [
                                      SizedBox(height: 50,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children:  const [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
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
                                                SizedBox(width: 70,),
                                                Row(
                                                  children: [
                                                    Icon(Icons.favorite),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(color: Colors.lightBlue[50], height: 600,
                              child: const Row(
                                children: [
                                  SideBar()
                                ],
                              )
                            ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.lightBlue[50],
                            height: 600,
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
                                        Image.asset("assets/images/chair.png")
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                     const SizedBox(height: 50),
                     Column(
                      children: [
                        const Text("FEATURED PRODUCTS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        const Divider(
                          color: Colors.orange,
                          indent: 600,
                          endIndent: 600,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        featured_product(
                          featuredImage: 'assets/images/chair.png',
                          featuredName: 'Stuffing Chair',
                          featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                        featured_product(
                            featuredImage: 'assets/images/chair.png',
                            featuredName: 'Stuffing Chair',
                            featuredPrice: '400.00'),
                        SizedBox(width: 10),
                      ],
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
                                  Container(child: Image.asset("assets/images/chair.png", height: 400,width: 400,), color: Colors.lightBlue[50],),
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
                            child: Container(
                              height: 600,
                              //color: Colors.red,
                              child: Column(
                                children: [
                                  Container(child: Image.asset("assets/images/chair.png", height: 400,width: 400,), color: Colors.lightBlue[50],),
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
                            child: Container(
                              height: 600,
                              //color: Colors.red,
                              child: Column(
                                children: [
                                  Container(child: Image.asset("assets/images/chair.png", height: 400,width: 400,), color: Colors.lightBlue[50],),
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
              ),
              Container(
                height: 400,
                color: Colors.lightGreen[50],
                child:  Padding(
                  padding: EdgeInsets.only(left: 300.0, right: 300, top: 50),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                height: 200,
                                //color: Colors.red,
                                child: const Column(
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
                          Expanded(
                              child: Container(
                                height: 250,
                                //color: Colors.red,
                                child: const Padding(
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
                          SizedBox(width: 8),
                          Expanded(
                              child: Container(
                                height: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text("JOIN OUR NEWSLETTER NOW", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                                    SizedBox(height: 20),
                                    Text("Get E-mail updates about our latest shop and special offers."),
                                    SizedBox(height: 15),
                                    SizedBox(
                                      height: 40,
                                      width: 300,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: const Icon(Icons.search),
                                            hintText: "Search...",
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey.shade600),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey.shade600),
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.facebook),
                                        Icon(Icons.facebook),
                                        Icon(Icons.facebook),
                                        Icon(Icons.facebook)
                                      ],
                                    ),
                                  ],
                                ),
                                //color: Colors.red,
                              )
                          ),
                        ],
                      ),
                      Divider(),
                      const Row(
                        children: [
                          Text('Copyright ©2024 All rights reserved', style: TextStyle(fontSize: 15),),
                          SizedBox(width: 10),
                          Text('|'),
                          SizedBox(width: 10),
                          Text('Powered KologSoft', style: TextStyle(fontSize: 15)),
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

class featured_product extends StatelessWidget {
  final String featuredImage;
  final String featuredName;
  final String featuredPrice;
  const featured_product({
    super.key, required this.featuredImage, required this.featuredName, required this.featuredPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            width: 300,
            height: 200,
            color: Colors.lightBlue[50],
            child: Image.asset(featuredImage),
          ),
        ),
         Text(featuredName),
         Text('\$$featuredPrice', style: const TextStyle(fontWeight: FontWeight.w600),
         ),
        const Row(
          children: [
            Icon(Icons.favorite, size: 18,),
            SizedBox(width: 10),
            Icon(Icons.shopping_cart_checkout, size: 18,),
            SizedBox(width: 10),
            Icon(Icons.shopping_cart,size: 18,),
          ],
        )
      ],
    );
  }
}