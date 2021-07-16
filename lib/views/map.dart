import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart'
    show CameraPosition, GoogleMap, GoogleMapController, LatLng;

class MeuMapa extends StatefulWidget {
  @override
  _MeuMapaState createState() => _MeuMapaState();
}

class _MeuMapaState extends State<MeuMapa> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Localização', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
