
import 'package:flutter/material.dart';
import 'package:location/screens/HomePage.dart';
import 'package:location/screens/map_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const HomePage(),
        "Map" : (context) => const MapPage(),
      },
    ),
  );
}
