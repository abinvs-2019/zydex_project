import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/proceed_payment/proceed_payment.dart';
import 'package:zydex/widgets/widgets.dart';

class CourseOverViewPage extends StatefulWidget {
  const CourseOverViewPage({Key? key}) : super(key: key);

  @override
  _CourseOverViewPageState createState() => _CourseOverViewPageState();
}

class _CourseOverViewPageState extends State<CourseOverViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Container(
              child: Column(
                children: [
                  firstContainer(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RISE Batch for Class 11th JEE Main ",
                          style: TextStyle(color: Colors.blue, fontSize: 20.sp),
                        ),
                        Text(
                          "and Advanced 2023",
                          style: TextStyle(color: Colors.blue, fontSize: 20.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  secondContainer(),
                  Container(
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "Schedule",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Schedule",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Schedule",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Schedule",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200.h,
                    // width: 200.w,
                    child: TabBarView(
                      children: [
                        scheduleTabVIew(),
                        Icon(Icons.directions_bike),
                        Icon(Icons.directions_bike),
                        Icon(Icons.directions_bike),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProceedPaymenScreen()));
                      },
                      child:
                          widgets().commonNextButton(300.w, "Join this batch"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container scheduleTabVIew() {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Full Schedule",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.wb_sunny),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Morining Classes",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.tv),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "20+ live sessions",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("28-Aug-2021"),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        child: Icon(Icons.play_arrow_outlined),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "KG1 Arabic reading",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Container(
                            child: Text("9.00 AM-10.00 AM"),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 50.h,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column secondContainer() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Icon(
                Icons.book,
                color: Colors.blue,
              ),
              Text(
                "Started on 28 Aug 2021",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          child: Row(
            children: [
              Icon(
                Icons.rounded_corner,
                color: Colors.blue,
              ),
              Text(
                "Started on 28 Aug 2021",
                style: TextStyle(
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
          child: Row(
            children: [
              Icon(
                Icons.engineering,
                color: Colors.blue,
              ),
              Text(
                "Started on 28 Aug 2021",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container firstContainer() {
    return Container(
      color: Colors.teal[100],
      child: Row(
        children: [
          SizedBox(
            width: 25.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
            child: Image.asset("assets/images/person.png"),
          ),
          SizedBox(
            width: 50.w,
          ),
          Column(
            children: [
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
              SizedBox(
                height: 70.h,
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
          )
        ],
      ),
    );
  }
}
