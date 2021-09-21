import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:zydex/screens/home/home.dart';
import 'package:zydex/widgets/widgets.dart';

class CourseSelection extends StatefulWidget {
  const CourseSelection({Key? key}) : super(key: key);

  @override
  _CourseSelectionState createState() => _CourseSelectionState();
}

class _CourseSelectionState extends State<CourseSelection> {
  bool isbool1 = false;
  bool isbool2 = false;
  bool isbool3 = false;
  bool isbool4 = false;
  bool isbool5 = false;
  bool isbool6 = false;
  bool isbool7 = false;
  bool isbool8 = false;
  bool isbool9 = false;
  bool isbool10 = false;
  bool isbool11 = false;
  bool isbool12 = false;

  bool is2020 = false;
  bool is2021 = false;

  bool isKerala = false;
  bool isCbse = false;
  bool isicse = false;
  bool isIb = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
                vertical: 20.h,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                "Select your Grade",
                style: TextStyle(fontSize: 20.sp, color: Colors.blue[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = !isbool1;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '13th',
                                    style: TextStyle(
                                      color:
                                          isbool1 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool1 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("12th");
                                setState(() {
                                  isbool1 = false;

                                  isbool2 = !isbool2;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '11th',
                                    style: TextStyle(
                                      color:
                                          isbool2 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool2 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = !isbool3;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '10th',
                                    style: TextStyle(
                                      color:
                                          isbool3 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool3 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = !isbool4;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '8th',
                                    style: TextStyle(
                                      color:
                                          isbool4 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool4 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = !isbool5;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '7th',
                                    style: TextStyle(
                                      color:
                                          isbool5 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool5 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("6");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = !isbool6;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '7th',
                                    style: TextStyle(
                                      color:
                                          isbool6 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool6 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = !isbool7;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '6th',
                                    style: TextStyle(
                                      color:
                                          isbool7 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool7 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = !isbool8;
                                  isbool9 = false;

                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '5th',
                                    style: TextStyle(
                                      color:
                                          isbool8 ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool8 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = !isbool9;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text('4th'),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool9 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");

                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;

                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = !isbool10;
                                  isbool11 = false;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text('3rd'),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool10 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = !isbool11;
                                  isbool12 = false;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '2nd',
                                    style: TextStyle(
                                      color: isbool11
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool11 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                print("1");
                                setState(() {
                                  isbool1 = false;
                                  isbool2 = false;
                                  isbool3 = false;
                                  isbool4 = false;
                                  isbool5 = false;

                                  isbool6 = false;
                                  isbool7 = false;
                                  isbool8 = false;
                                  isbool9 = false;
                                  isbool10 = false;
                                  isbool11 = false;
                                  isbool12 = !isbool12;
                                });
                              },
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    '1st',
                                    style: TextStyle(
                                      color: isbool12
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isbool12 ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
                vertical: 20.h,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                "Accademic Year Started in",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.blue[600],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is2020 = !is2020;
                        is2021 = false;
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Container(
                          height: 34.h,
                          width: 70.h,
                          child: Center(
                            child: Text(
                              '2020',
                              style: TextStyle(
                                color: is2020 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: is2020 ? Colors.teal : Colors.blue[100],
                            borderRadius: BorderRadius.circular(10.h),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is2021 = !is2021;
                        is2020 = false;
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Container(
                          height: 34.h,
                          width: 70.h,
                          child: Center(
                            child: Text(
                              '2021',
                              style: TextStyle(
                                color: is2021 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: is2021 ? Colors.teal : Colors.blue[100],
                            borderRadius: BorderRadius.circular(10.h),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
                vertical: 20.h,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                "Select your Board",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.blue[600],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isCbse = !isCbse;
                              isKerala = false;
                              isicse = false;
                              isIb = false;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    'CBSE ',
                                    style: TextStyle(
                                      color:
                                          isCbse ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isCbse ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isCbse = false;
                              isKerala = !isKerala;
                              isicse = false;
                              isIb = false;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    'KERALA ',
                                    style: TextStyle(
                                      color: isKerala
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isKerala ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isCbse = false;
                              isKerala = false;
                              isicse = false;
                              isIb = !isIb;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Container(
                                height: 34.h,
                                width: 70.h,
                                child: Center(
                                  child: Text(
                                    'IB',
                                    style: TextStyle(
                                      color: isIb ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: isIb ? Colors.teal : Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 8.h),
              child: Row(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isCbse = false;
                          isKerala = false;
                          isicse = !isicse;
                          isIb = false;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Container(
                            height: 34.h,
                            width: 70.h,
                            child: Center(
                              child: Text(
                                'ICSE',
                                style: TextStyle(
                                  color: isicse ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: isicse ? Colors.teal : Colors.blue[100],
                              borderRadius: BorderRadius.circular(10.h),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 60.h),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: widgets().commonNextButton(300.w, "Start Learning")))
          ],
        ),
      ),
    );
  }
}
