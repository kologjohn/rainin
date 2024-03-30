import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raininn/controller/controller.dart';
import 'package:raininn/controller/dbfields.dart';

class featured_product extends StatefulWidget {
  final String featuredImage;
  final String featuredName;
  final String featuredPrice;
  final bool pgress;
  const featured_product({super.key, required this.featuredImage, required this.featuredName, required this.featuredPrice,required this.pgress});

  @override
  State<featured_product> createState() => _featured_productState();
}

class _featured_productState extends State<featured_product> {
  bool myprogess=false;
  bool cartshow=true;
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
            child: Image.asset(widget.featuredImage),
          ),
        ),
        Text(widget.featuredName),
        Text('\$${widget.featuredPrice}', style: const TextStyle(fontWeight: FontWeight.w600),
        ),
         Visibility(
           visible: cartshow,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.favorite, size: 18,),
              const SizedBox(width: 10),
              const Icon(Icons.shopping_cart_checkout, size: 18,),
              const SizedBox(width: 10),
              InkWell(
                onTap: ()async{
                  setState(() {
                    myprogess=true;
                    cartshow=false;

                  });
                  //print("e");
                 // print(featuredName);
                  //print(featuredPrice);
                  print(widget.featuredName);

                  final addcart=await Ecom().addtocart(widget.featuredName, widget.featuredPrice, "1", widget.featuredName);
                  if(addcart){
                    SnackBar snackbar=SnackBar(content: Text("${widget.featuredName} added successfully",style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),backgroundColor: Colors.green,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    setState(() {
                      myprogess=false;
                      cartshow=true;
                    });


                  }
                  //String? email=Dbfields.auth.currentUser!.email;

                },
                  child: Icon(Icons.shopping_cart,size: 18,)
              ),
            ],
                   ),
         ),
         Visibility(visible:myprogess,child: Container(height:20,width:20,child: CircularProgressIndicator(color: Colors.orange,strokeWidth: 4,))),
      ],
    );
  }
}
