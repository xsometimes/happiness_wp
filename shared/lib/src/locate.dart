import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocateManager {
  
  static Future<Position?> getCurrentLocation() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // 检查定位服务是否开启
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        print('定位服务未开启');
        return null; 
      }

      // 检查定位权限
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print('定位权限被拒绝');
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        print('定位权限被永久拒绝');
        return null;
      }
      
      Position? position = await Geolocator.getLastKnownPosition();
      if (position == null) {
        // 获取当前位置
        position = await Geolocator.getCurrentPosition();
      }
      return position;
      
    } catch (e) {
      print('getCurrentLocation: ${e}');
      return null;
    }
  }

  static Future<Placemark?> getPlacemarkFromCoord(double latitude, double longitude) async {
    try {
     final placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        return placemarks.first;
      }
    return null; 
    } catch (e) {
      print('getPlacemarkFromCoord: ${e}');
      return null;
    }
  }

}