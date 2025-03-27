import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meow/resources/res_export.dart';
import 'package:shared/shared.dart';

class LocDropdown extends StatefulWidget {
  const LocDropdown({super.key});

  @override
  State<LocDropdown> createState() => _LocDropdownState();
}

class _LocDropdownState extends State<LocDropdown> {

  String _currentCity = '全部';

  Future<void> _getCurrentLocation() async {
    setState(() {
      _currentCity = '正在定位...';
    });
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
    // _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: _getCurrentLocation,
      child: Row(
        children: [
          Icon(Icons.location_on, size: 24.sp, color: primaryColor,),
          Gaps.h24,
          Text(_currentCity, style: MeowFontStyles.black14,),
          Icon(Icons.arrow_drop_down, size: 14.sp,),
        ],
      ),
    );
  }
}