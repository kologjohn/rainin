import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../controller/dbfields.dart';
import 'featured_product.dart';
class featuredGridview extends StatelessWidget {
  final int shoenum;
  final double widgth;
  final double height;
  final double imgHeight;
  final double imgWidth;
  final double name;
  final double price;
  final double favHeight;
  final double favWidth;
  final double favSize;
  final double cartHeight;
  final double cartWidth;
  final double cartSize;
  const featuredGridview({super.key, required this.shoenum, required this.widgth, required this.height, required this.imgHeight, required this.imgWidth, required this.name, required this.price, required this.favHeight, required this.favWidth, required this.favSize, required this.cartHeight, required this.cartWidth, required this.cartSize,});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Dbfields.db.collection("items").snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if(!snapshot.hasData)
        {
          return Text("No Data");
        }
        else if(snapshot.connectionState==ConnectionState.waiting)
        {
          CircularProgressIndicator();
        }
        else if(snapshot.hasError)
        {
          return Text("Error Loading Data");

        }

        return GridView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.docs.length,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: shoenum),
            itemBuilder: (context, index)=> featured_product(
              featuredImage: snapshot.data!.docs[index][ItemReg.itemurl],
              featuredName: snapshot.data!.docs[index][ItemReg.item],
              featuredPrice: snapshot.data!.docs[index][ItemReg.sellingprice],
              pgress: false,
              contwidth: widgth,
              contheight: height, imageHeight: imgHeight, imageWidth: imgWidth, nameSize: name, priceSize: price, favHeight: favHeight, favWidth: favWidth, favSize: favSize, cartHeight: cartHeight, cartWidth: cartWidth, cartSize: cartSize,
            )
        );

      },
    );
  }
}