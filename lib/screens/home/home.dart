import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/home/homeComponents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.video_call,
                color: Colors.white,
              ),
              onPressed: () {
                //TODO
              },
            )
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Good Morning Abin! ",
                    style: TextStyle(
                      fontSize: 26.sp,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                HomeComponents().topContainer(),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Free Courses",
                              style: TextStyle(
                                color: Colors.blue[600],
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(color: Colors.teal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HomePageContainer(
                              imageLink: "assets/images/runningImage.png",
                              color: Colors.teal[100],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            HomePageContainer(
                              imageLink: "assets/images/runningImage.png",
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Featured Courses",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      HomeComponents().liveConatiner(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                HomeComponents().knoemoreWIdget("assets/images/feedback.png",
                    "Want to know more?", "BOOK A DEMO"),
                SizedBox(
                  height: 20.h,
                ),
                HomeComponents().knoemoreWIdget(
                    "assets/images/question.png", "Have any doubts?", "ASK"),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.black,
              ),
              label: 'Study',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.square_foot,
                color: Colors.black,
              ),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
                color: Colors.black,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageContainer extends StatelessWidget {
  final Color? color;
  final String? imageLink;
  const HomePageContainer({Key? key, this.color, this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      color: color,
      child: Column(
        children: [
          Container(width: 200.w, child: Image.asset("$imageLink")),
          SizedBox(
            height: 10.h,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "Lorem ipsum dolor sit ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  width: 60.w,
                )
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.engineering,
                size: 10.r,
                color: Colors.blue[600],
              ),
              Text(
                "  5:30 pm By Jim Morrison",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(
                width: 40.w,
              ),
              Container(
                height: 20.h,
                width: 40.w,
                child: Center(
                  child: Text(
                    " Join ",
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.h),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
