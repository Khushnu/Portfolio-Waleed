
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'Waleed Portfolio/ToResponsivePage/toResponsiveLayout_Main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    return MaterialApp(
      title: "Waleed Ahmad",
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      home: const ToResponsiveLayout(), //Website Enabled
      // home: const NotResp(), // Website Disabled
    );
  }
}
