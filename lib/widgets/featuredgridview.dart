import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../controller/dbfields.dart';
import 'featured_product.dart';
class featuredGridview extends StatelessWidget {
  final int shoenum;
  const featuredGridview({
    super.key, required this.shoenum,
  });

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
              featuredImage: 'assets/images/chair.png',
              featuredName: snapshot.data!.docs[index][ItemReg.item],
              featuredPrice: snapshot.data!.docs[index][ItemReg.sellingprice], pgress: false,)
        );

      },
    );
  }
}
