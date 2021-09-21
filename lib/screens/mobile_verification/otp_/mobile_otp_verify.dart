import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/login_/login.dart';
import 'package:zydex/screens/mobile_verification/otp_/components/components.dart';
import 'package:zydex/widgets/widgets.dart';

import 'components/otp_form.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 80.h,
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            Text(
              "Please enter the verification code sent",
              style: TextStyle(fontSize: 16.sp, color: Colors.blue),
            ),
            Text(
              "to your phone number",
              style: TextStyle(fontSize: 16.sp, color: Colors.blue),
            ),
            SizedBox(
              height: 20.h,
            ),
            OTP_Components().Body(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Expired after 0s"),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Resend"),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  print("tapped");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 400.h),
                  child: widgets().commonNextButton(300.w, "Confirm"),
                )),
          ],
        ),
      ),
    ));
  }
}
