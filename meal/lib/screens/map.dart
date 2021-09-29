import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/field.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';




class SearchMap extends StatefulWidget {

  @override
  _SearchMapState createState() => _SearchMapState();
}

class _SearchMapState extends State<SearchMap> {

  TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();

Position position = Position(latitude: 30.0444, longitude: 31.2357, accuracy: 0.0, altitude: 0.0, isMocked: true, floor: 0, timestamp: DateTime(1990), heading: 0.0, speedAccuracy: 0.0, speed: 0.0);

bool mapType = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: field('Search Locaiton', Icons.location_on, TextInputType.text, searchController, searchKey,
        onSubmit: () {
          searchLocation(searchController.text);
        }
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton(),
          IconButton(
            icon: Icon(Icons.map_outlined),
            onPressed: () {
              setState(() {
                mapType = !mapType;
              });
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () {
          currentPosition();
          setState(() {
            
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          zoom: 12,
          target: LatLng(position.latitude, position.longitude)
        ),
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        mapType: mapType == false ? MapType.normal : MapType.satellite,
        markers: {
          Marker(
            markerId: MarkerId(''),
            position: LatLng(position.latitude, position.longitude)
          )
        },
      ),
    );
  }
  currentPosition() async {

    Position _currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = _currentPosition;
    });
  }

  searchLocation(String value) async {

    List<Location> location = await locationFromAddress(value);
    setState(() {
      position = Position(latitude: location[0].latitude, longitude: location[0].longitude, accuracy: 0.0, altitude: 0.0, isMocked: true, floor: 0, timestamp: DateTime(1990), heading: 0.0, speedAccuracy: 0.0, speed: 0.0);
    });
  }
}