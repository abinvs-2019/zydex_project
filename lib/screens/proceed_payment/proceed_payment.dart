import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/proceed_payment/select_payment.dart';
import 'package:zydex/widgets/widgets.dart';

class ProceedPaymenScreen extends StatelessWidget {
  const ProceedPaymenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "SUBSCRIPTION",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "FULL COURSE (548 DAYS)",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.h),
              ),
              // height: 50.h,
              width: 270.w,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    loremIpsumText(),
                    loremIpsumText(),
                    loremIpsumText(),
                    loremIpsumText(),
                    loremIpsumText(),
                    loremIpsumText(),
                    SizedBox(height: 20.h),
                    paymentContaianer(),
                    SizedBox(height: 15.h),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      height: 80.h,
                      width: 170.w,
                      child: Column(
                        children: [
                          Text(
                            "Full Courses 365 Days",
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.blue),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "50000",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Text(
                            "data dfjdsf fjdf df    fdjifj djfdf  weur9",
                            style: TextStyle(
                              fontSize: 7.sp,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      height: 80.h,
                      width: 170.w,
                      child: Column(
                        children: [
                          Text(
                            "Full Courses 182 Days",
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.blue),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "24392",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Text(
                            "data dfjdsf fjdf df    fdjifj djfdf  weur9",
                            style: TextStyle(
                              fontSize: 7.sp,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodSelection()));
              },
              child: widgets().commonNextButton(300.w, "PROCEED PAYMENT"),
            )
          ],
        ),
      ),
    );
  }

  Stack paymentContaianer() {
    return Stack(children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10.h),
              ),
              width: 250.w,
              height: 120.h,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Full Courses 548 Days",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.5.sp,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50.w,
                        ),
                        Text(
                          "₹69999",
                          style: TextStyle(
                              color: Colors.tealAccent,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "    ₹49545",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Valid From: Mar 2, 2022    valid Upto: Aug 31,2023",
                      style: TextStyle(color: Colors.grey, fontSize: 8.sp),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Text("RECOMMENDED"),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 30.h,
        left: 235.w,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10.h),
          ),
          height: 40.h,
          width: 30.w,
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "  34%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "  Off",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Container loremIpsumText() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.check_circle,
            color: Colors.amber,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "Lorem ipsum Dolor IPsum",
            style: TextStyle(fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}
