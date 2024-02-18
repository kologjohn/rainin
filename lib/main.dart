import 'package:flutter/material.dart';
import 'package:raininn/responsive/desktop_scaffold.dart';
import 'package:raininn/responsive/mobile_scaffold.dart';
import 'package:raininn/responsive/responsive_layout.dart';
import 'package:raininn/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          isMobile: MobileScaffold(),
          isTablet: TabletScaffold(),
          isDesktop: DesktopScaffold()
      ),
    );
  }
}
