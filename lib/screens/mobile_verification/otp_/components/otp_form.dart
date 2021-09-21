import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/widgets/widgets.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  TextEditingController form1Text = TextEditingController();
  TextEditingController form2Text = TextEditingController();
  TextEditingController form3ext = TextEditingController();
  TextEditingController form4Text = TextEditingController();
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  String? value;
  void mergeAllNumbers() {
    value = form1Text.text + form1Text.text + form3ext.text + form2Text.text;
    print(value ?? "novalue");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20.h,
                      child: Text(
                        "Your Code here",
                        style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 60.w,
                      child: TextFormField(
                          controller: form1Text,
                          autofocus: true,
                          style: TextStyle(fontSize: 24.sp),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.h),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.h),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            nextField(value, pin2FocusNode!);
                          })),
                  SizedBox(
                    width: 60.w,
                    child: TextFormField(
                      controller: form2Text,
                      focusNode: pin2FocusNode,
                      style: TextStyle(fontSize: 24.sp),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.h),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      onChanged: (value) => nextField(value, pin3FocusNode!),
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                    child: TextFormField(
                      controller: form3ext,
                      focusNode: pin3FocusNode,
                      style: TextStyle(fontSize: 24.sp),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.h),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      onChanged: (value) => nextField(value, pin4FocusNode!),
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                    child: TextFormField(
                      controller: form4Text,
                      focusNode: pin4FocusNode,
                      style: TextStyle(fontSize: 24.sp),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.h),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          mergeAllNumbers();
                          pin4FocusNode!.unfocus();
                          // Then you need to check is the code is correct or not
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
