import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/globals/global.dart';

import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  permissions() async {
    await Permission.location.request();
  }

  @override
  void initState() {
    permissions();
    super.initState();
  }

  Placemark? area;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${Global.latitude} , ${Global.longitude}"),
            OutlinedButton(
              onPressed: () async {
                Geolocator.getPositionStream().listen((e) {
                  setState(() {
                    Global.latitude = e.latitude;
                    Global.longitude = e.longitude;
                  });
                });
              },
              child: Text("Get location"),
            ),
            Text("$area"),
            OutlinedButton(
              onPressed: () async {
                List<Placemark> placeMark = await placemarkFromCoordinates(
                    Global.latitude, Global.longitude);
                setState(() {
                  area = placeMark[0];
                });
              },
              child: Text("Get Area"),
            ),
            OutlinedButton(
              onPressed: () async {
                setState(() {
                  Global.mapLocation =
                  "https://www.google.co.in/search?q=$Global.lat,$Global.long";
                });
                Navigator.pushNamed(context,"Map");},
              child: const Text("Get Live Locations"),
            ),
          ],
        ),
      ),
    );
  }
}
