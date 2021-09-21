import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 200.h,
        width: 200.w,
        child: Image.asset("assets/images/appImage.png"),
      )),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _textEditingController = TextEditingController();
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 300.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(fontSize: 15.sp, color: Colors.blue),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                validator: (val) {
                  return val!.length < 4 || val.isEmpty || val.length > 10
                      ? "Please enter a valid Phone Number"
                      : null;
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0.h),
                    borderSide: new BorderSide(),
                  ),
                ),
                keyboardType: TextInputType.name,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          alignment: Alignment.center,
          width: 300.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: TextStyle(fontSize: 15.sp, color: Colors.blue),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                obscureText: _obscure,
                validator: (val) {
                  return val!.length < 4 || val.isEmpty || val.length > 10
                      ? "Please enter a valid Phone Number"
                      : null;
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      icon: _obscure
                          ? Icon(Icons.password)
                          : Icon(Icons.remove_red_eye)),
                  hintText: "**********",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0.h),
                    borderSide: new BorderSide(),
                  ),
                ),
                keyboardType: TextInputType.name,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}
