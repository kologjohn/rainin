import 'package:flutter/material.dart';
import 'package:raininn/components/shop.dart';
import 'package:raininn/responsive/desktop_scaffold.dart';
import 'package:raininn/responsive/mobile_scaffold.dart';
import 'package:raininn/responsive/responsive_layout.dart';
import 'package:raininn/responsive/tablet_scaffold.dart';
import 'package:raininn/widgets/cart.dart';

class Routes{
  static String shop="shop";
  static String cart="cart";
  static String dashboard="dashboard";
}

final pages={
  Routes.shop:(context)=>const ShopPage(),
  Routes.cart:(context)=>const CartView(),
  Routes.dashboard:(context)=>const ResponsiveLayout(isMobile: MobileScaffold(), isTablet: TabletScaffold(), isDesktop: DesktopScaffold()

  ),
};