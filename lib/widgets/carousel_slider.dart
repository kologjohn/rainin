import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:raininn/widgets/slide_tile.dart';

class MyCarousel extends StatefulWidget {
  final bool enlargeCenter;
  final double viewPort;
  const MyCarousel({super.key, required this.enlargeCenter, required this.viewPort});

  @override
  State<MyCarousel> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            enlargeCenterPage: widget.enlargeCenter,
            viewportFraction: widget.viewPort
        ),
        items: const [
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
        ]
    );
  }
}
