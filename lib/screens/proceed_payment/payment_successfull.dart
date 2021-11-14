import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/widgets/widgets.dart';

class PaymentSucessfull extends StatelessWidget {
  const PaymentSucessfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
              ),
              Container(child: Image.asset('assets/images/Group.png')),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Text(
                  "Thank you",
                  style: TextStyle(fontSize: 22.sp, color: Colors.blue[700]),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Text(
                  "Your subscription in active now",
                  style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              widgets().commonNextButton(300.w, "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}
