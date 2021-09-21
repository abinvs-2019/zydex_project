import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class widgets {
  Widget commonNextButton(double width, String text) {
    return Container(
      alignment: Alignment.center,
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: 17.h,
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 12.sp),
      ),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(10.h),
      ),
    );
  }
}
