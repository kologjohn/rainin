import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String slideImagePath;
  final String slideName;
  final String slidePrice;

  const SlideTile({super.key, required this.slideImagePath, required this.slideName, required this.slidePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.lightBlue[50],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffee image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(slideImagePath),
            ),

            //coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    slideName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 2,),
                  // Text(
                  //   'With Almond Milk',
                  //   style: TextStyle(color: Colors.grey[700]),
                  // ),
                ],
              ),
            ),

            //coffee price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$slidePrice'),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
