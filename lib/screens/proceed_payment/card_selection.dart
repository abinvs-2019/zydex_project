import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/proceed_payment/payment_successfull.dart';
import 'package:zydex/widgets/widgets.dart';

class CardSelectionPage extends StatefulWidget {
  const CardSelectionPage({Key? key}) : super(key: key);

  @override
  _CardSelectionPageState createState() => _CardSelectionPageState();
}

class _CardSelectionPageState extends State<CardSelectionPage> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.green,
        ),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Card Type",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Image.asset(
                "assets/images/Card_3.png",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Name",
                style: TextStyle(fontSize: 15.sp, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 10.h,
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
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Card Number",
                style: TextStyle(fontSize: 15.sp, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              validator: (val) {
                return val!.length < 4 || val.isEmpty || val.length > 10
                    ? "Please enter a valid Phone Number"
                    : null;
              },
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "0127-3986-3839-4562",
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
              height: 10.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expiration Date",
                    style: TextStyle(fontSize: 15.sp, color: Colors.blue),
                  ),
                  Row(
                    children: [
                      Text(
                        "CVV",
                        style: TextStyle(fontSize: 15.sp, color: Colors.blue),
                      ),
                      SizedBox(
                        width: 130.w,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    validator: (val) {
                      return val!.length < 4 || val.isEmpty || val.length > 10
                          ? "Please enter a valid Phone Number"
                          : null;
                    },
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: " MM/YY",
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
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  child: TextFormField(
                    validator: (val) {
                      return val!.length < 4 || val.isEmpty || val.length > 10
                          ? "Please enter a valid Phone Number"
                          : null;
                    },
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: "****",
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
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentSucessfull()));
                },
                child: widgets().commonNextButton(300.w, "PROCEED PAYMENT")),
          ],
        ),
      ),
    );
  }
}
