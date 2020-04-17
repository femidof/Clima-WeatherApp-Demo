import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  // Location({@required this.latitude, @required this.longitude});

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
