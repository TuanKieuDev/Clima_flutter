import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    //grant permission
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    //get location
    try {
      // Position position = await Geolocator.getCurrentPosition(
      //     desiredAccuracy: LocationAccuracy.low);
      // //default will be the location of apple
      //
      // latitude = position.latitude;
      // longitude = position.longitude;

      latitude = 35;
      longitude = 35;

    }catch(e){
      print(e);
    }
  }
}