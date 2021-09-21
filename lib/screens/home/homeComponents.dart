import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeComponents {
  Container topContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.h),
      ),
      width: 500.w,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/images/containerStack.png"),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "GET ACCESS TO",
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " +100",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " COURSE",
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SUBSCRIBE NOW",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 5.h,
              width: 25.w,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.h),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container liveConatiner() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image.asset("assets/images/person.png"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 170.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 19.h,
                              width: 50.w,
                              child: Center(
                                child: Text(
                                  "LIVE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5.h),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "lorem iosyum dolor",
                      style: TextStyle(
                          color: Colors.blue[600],
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "lorem iosyum dolor SIT AMet ,",
                      style: TextStyle(),
                    ),
                    Text(
                      "dfhidu sdfdfjkhd d fhdkjf,",
                      style: TextStyle(),
                    ),
                    Text(
                      "aliqum ,",
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 23.h,
                      width: 70.w,
                      child: Center(
                        child: Text(
                          "Join Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Column(
              children: [
                Text(
                  "RISE BATCH for Class 11th JEE Main Advanced 2023",
                  style: TextStyle(
                      color: Colors.blue[600],
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Starts: September 1, 2021",
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container knoemoreWIdget(String imageLInk, firstText, secondText) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  '$firstText',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 27.h,
                  width: 100.w,
                  child: Center(
                    child: Text(
                      "$secondText",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80.w,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "$imageLInk",
            ),
          ),
        ],
      ),
    );
  }
}
