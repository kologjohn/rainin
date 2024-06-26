import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:raininn/widgets/featuredgridview.dart';
import '../widgets/carousel_slider.dart';
import '../widgets/menu_type.dart';
import '../widgets/route.dart';
import '../widgets/slide_tile.dart';
import '../widgets/social_media_icons.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  bool show=false;
  bool editShow=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 100),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: SizedBox(
                                height: 50,
                                //color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                          "RAININN MALL",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.menu, size: 40,)
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
                          Icon(Icons.favorite),
                          SizedBox(width: 20),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, Routes.cart);
                              },
                              child: const Icon(Icons.shopping_cart)),
                          SizedBox(width: 20),
                          Text("Item")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: GestureDetector(
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
                                    //show=true;
                                  });
                                },
                                child: Container(
                                  color: Colors.orange,
                                  height: 50,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 18.0, right: 18),
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
                                  height: 400,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                  ),
                                  child: Padding(
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
                                ),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                color: Colors.white,
                                height: 60,
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Text("All Categories"),
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
                                          width: 80,
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
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 400,
                            color: Colors.lightBlue[50],
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                                fontSize: 20
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
                                        Image.asset("assets/images/chair.png", height: 350, width: 350,)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MyCarousel(enlargeCenter: false, viewPort: 0.3),
                  // const SizedBox(
                  //   height: 320,
                  //   //color: Colors.red,
                  //   child: ScrollLoopAutoScroll(
                  //     scrollDirection: Axis.horizontal,
                  //     delay: Duration(seconds: 4),
                  //     duration: Duration(seconds: 50),
                  //     gap: 25,
                  //     reverseScroll: false,
                  //     duplicateChild : 25,
                  //     enableScrollInput : false,
                  //     delayAfterScrollInput : Duration(seconds: 4),
                  //     child:  SlideTile(
                  //         slideImagePath: "assets/images/chair.png",
                  //         slideName: "Stuffing Chair",
                  //         slidePrice: "500.00"
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                   const Column(
                    children: [
                      Text("FEATURED PRODUCTS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      Divider(
                        color: Colors.orange,
                        indent: 300,
                        endIndent: 300,
                        thickness: 5,
                      ),
                      SizedBox(height: 30),
                      SizedBox(height: 50,
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
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      featuredGridview(shoenum: 3, widgth: 250, height: 150, imgHeight: 300, imgWidth: 200, name: 14, price: 14, favHeight: 30, favWidth: 80, favSize: 20, cartHeight: 30, cartWidth: 80, cartSize: 20)
                    ],
                  ),
                  const SizedBox(height: 50),
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
                                        Image.asset("assets/images/chair.png", height: 200, width: 200,)
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
                                                fontSize: 15
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            "100% Pure Natural Fruit",
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
                      const SizedBox(width: 10),
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
                                        Image.asset("assets/images/chair.png", height: 200, width: 200,)
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
                                                fontSize: 15
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            "100% Pure Natural Fruit",
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
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 470,
                            child: const Column(
                              children: [
                                Text("TOP RATED PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                SizedBox(height: 18),
                                MyCarousel(enlargeCenter: false, viewPort: 0.5),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 470,
                            child: const Column(
                              children: [
                                Text("TOP RATED PRODUCTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                                SizedBox(height: 18),
                                MyCarousel(enlargeCenter: false, viewPort: 0.5)
                              ],
                            ),
                          )
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  const Column(
                    children: [
                      Text("FROM THE BLOG", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      Divider(
                        color: Colors.orange,
                        indent: 300,
                        endIndent: 300,
                        thickness: 5,
                      ),

                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 500,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 300,width: 300,),),
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
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("Stuffing is the soft material inside pillows, "
                                        "\n mattresses, or sofa cushions. Without stuffing, "
                                        "\n your comfy chair wouldn't be very comfy.",
                                      style: TextStyle(color: Colors.black54, fontSize: 12),
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
                            height: 500,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 300,width: 300,),),
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
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("Stuffing is the soft material inside pillows, "
                                        "\n mattresses, or sofa cushions. Without stuffing, "
                                        "\n your comfy chair wouldn't be very comfy.",
                                      style: TextStyle(color: Colors.black54, fontSize: 12),
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
                            height: 500,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Container(color: Colors.lightBlue[50],child: Image.asset("assets/images/chair.png", height: 300,width: 300,),),
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
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("COMFORTABLE STUFFING CHAIRS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Text("Stuffing is the soft material inside pillows, "
                                        "\n mattresses, or sofa cushions. Without stuffing, "
                                        "\n your comfy chair wouldn't be very comfy.",
                                      style: TextStyle(color: Colors.black54, fontSize: 12),
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
                padding: const EdgeInsets.only(left: 100.0, right: 100, top: 50),
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
                                  Text("RAIN INN MALL", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
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
                                    Text("USEFUL LINKS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
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
                                  const Text("JOIN OUR NEWSLETTER NOW", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
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
                                  const SocialMediaIcons(),
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
    );
  }
}
