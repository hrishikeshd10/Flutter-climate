import 'package:geolocator/geolocator.dart';

class Location{


  double latitude;
  double longitude;

  Future<void> getCurrentGeoLocation() async {

    try {//
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);

      latitude = position.latitude;
      longitude = position.longitude;



    }catch(e){
      print(e);
    }

  }


}
