import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/mobile_verification/mobile_number_input/mobile_number.dart';
import 'package:zydex/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final slidingImages = [
    'assets/images/pana.png',
    'assets/images/slidingImage.png',
    'assets/images/amico.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: 80.h,
            horizontal: 20.w,
          ),
          height: 338.0.h,
          // width: 78.w,
          child: Column(
            children: [
              Text(
                "Lorem ipsum dolor sit amet,",
                style: TextStyle(fontSize: 20.sp, color: Colors.blue),
              ),
              Text(
                " consectetur adipiscing elit ut aliquam",
                style: TextStyle(fontSize: 20.sp, color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
          height: 150.h,
          width: 256.w,
          child: CarouselSlider.builder(
            itemCount: slidingImages.length,
            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              // height: 400.h,
            ),
            itemBuilder: (context, index, realindex) {
              final image = slidingImages[index];
              return buildImage(image, index);
            },
          ),
        ),
        SizedBox(
          height: 200.h,
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PhoneNumer()));
            },
            child: widgets()
                .commonNextButton(300.w, "Continue with Mobile Number")),
      ]),
    ));
  }

  Widget buildImage(String image, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      child: Image.asset(
        image,
        fit: BoxFit.none,
      ),
    );
  }
}
