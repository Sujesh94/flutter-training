import 'package:geolocator/geolocator.dart';

class Location{
  double lattitude;
  double longittude;

  Future getCurrentLocation() async{
    try {
      Position position = await getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lattitude=position.latitude;
      longittude=position.longitude;
    }catch(exception){
      print(exception);
    }
  }
}