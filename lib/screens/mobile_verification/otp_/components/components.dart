import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/mobile_verification/otp_/components/otp_form.dart';

class OTP_Components {
  Widget Body() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            OtpForm(),
          ],
        ),
        //   ],
        // ),
      ),
    );
  }
}
