import 'package:flutter/material.dart';
import 'package:zydex/screens/login_/components/components.dart';
import 'package:zydex/screens/register_/register.dart';
import 'package:zydex/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoContainer(),
              LoginForm(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: widgets().commonNextButton(300.w, "Login"),
              ),
              TextButton(
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 12.sp),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
