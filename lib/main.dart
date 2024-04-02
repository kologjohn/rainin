import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raininn/controller/controller.dart';
import 'package:raininn/responsive/desktop_scaffold.dart';
import 'package:raininn/responsive/mobile_scaffold.dart';
import 'package:raininn/responsive/responsive_layout.dart';
import 'package:raininn/responsive/tablet_scaffold.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:raininn/widgets/route.dart';
import 'firebase_options.dart';
import 'package:uuid/uuid.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
      ChangeNotifierProvider(child: const MyApp(),
      create: (BuildContext context)=>Ecom())
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: pages,
      initialRoute: Routes.dashboard,
      debugShowCheckedModeBanner: false,
    );
  }
}
