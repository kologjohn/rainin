import 'package:flutter/material.dart';

class MenuType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  const MenuType({super.key, required this.isSelected, required this.coffeeType});

  @override
  Widget build(BuildContext context) {
    return Text(
      coffeeType,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: isSelected ? Colors.orange: Colors.black,
      ),
    );
  }
}
