import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumberComponents {
  Widget textField(TextEditingController texteditingCOntroller) {
    return Container(
      alignment: Alignment.center,
      width: 300.w,
      child: TextFormField(
        validator: (val) {
          return val!.length < 10 || val.isEmpty || val.length > 10
              ? "Please enter a valid Phone Number"
              : null;
        },
        controller: texteditingCOntroller,
        decoration: InputDecoration(
          // hintText: " 000 000 0000",
          prefixText: "+91",
          labelText: " +91 000 000 0000",
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        keyboardType: TextInputType.phone,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
