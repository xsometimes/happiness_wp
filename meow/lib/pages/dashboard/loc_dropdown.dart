import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class LocDropdown extends StatefulWidget {
  const LocDropdown({super.key});

  @override
  State<LocDropdown> createState() => _LocDropdownState();
}

class _LocDropdownState extends State<LocDropdown> {

  String _currentCity = '定位中...';

  Future<void> _getCurrentLocation() async {
    LocateManager.getCurrentLocation().then((location) {
      if (location != null) {
        LocateManager.getPlacemarkFromCoord(location.latitude, location.longitude).then((placemark) {
          if (placemark != null) {
            setState(() {
              _currentCity = placemark.locality!;
            });
          }
        });
      } else {
        setState(() {
          _currentCity = '定位失败';
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _getCurrentLocation,
      child: Row(
        children: [
          Text(_currentCity),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}