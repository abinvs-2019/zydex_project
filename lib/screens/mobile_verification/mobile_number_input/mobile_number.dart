import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/mobile_verification/mobile_number_input/components/components.dart';
import 'package:zydex/screens/mobile_verification/otp_/mobile_otp_verify.dart';
import 'package:zydex/widgets/widgets.dart';

class PhoneNumer extends StatefulWidget {
  const PhoneNumer({Key? key}) : super(key: key);

  @override
  _PhoneNumerState createState() => _PhoneNumerState();
}

class _PhoneNumerState extends State<PhoneNumer> {
  final texteditingCOntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 80.h,
          horizontal: 30.w,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 18.w,
                  ),
                  Text(
                    "Mobile Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15.sp, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MobileNumberComponents().textField(texteditingCOntroller),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpVerify()));
              },
              child: widgets().commonNextButton(300.w, "Login"),
            )
          ],
        ),
      ),
    );
  }
}
