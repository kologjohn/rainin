import 'package:flutter/material.dart';
import 'package:raininn/controller/controller.dart';
import 'package:raininn/controller/dbfields.dart';

class featured_product extends StatelessWidget {
  final String featuredImage;
  final String featuredName;
  final String featuredPrice;
  const featured_product({super.key, required this.featuredImage, required this.featuredName, required this.featuredPrice,});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite, size: 18,),
            const SizedBox(width: 10),
            const Icon(Icons.shopping_cart_checkout, size: 18,),
            const SizedBox(width: 10),
            InkWell(
              onTap: (){
                print(featuredName);
                print(featuredPrice);
                Ecom().addtocart(featuredName, featuredPrice, "1", featuredName);
                //String? email=Dbfields.auth.currentUser!.email;

              },
                child: Icon(Icons.shopping_cart,size: 18,)
            ),
          ],
        )
      ],
    );
  }
}
