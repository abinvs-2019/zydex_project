import 'package:flutter/material.dart';
import 'package:zydex/screens/course_selectio/course_selection.dart';
import 'package:zydex/screens/register_/components.dart';
import 'package:zydex/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              RegisterComponents(),
              RegisterForm(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CourseSelection()));
                },
                child: widgets().commonNextButton(300.w, "Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
