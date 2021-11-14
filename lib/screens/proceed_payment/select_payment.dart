import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zydex/screens/proceed_payment/card_selection.dart';
import 'package:zydex/widgets/widgets.dart';

class PaymentMethodSelection extends StatefulWidget {
  const PaymentMethodSelection({Key? key}) : super(key: key);

  @override
  _PaymentMethodSelectionState createState() => _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState extends State<PaymentMethodSelection> {
  bool container1 = false,
      container2 = false,
      container3 = false,
      container4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.green,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount to pay: ",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Amount",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent[400],
                borderRadius: BorderRadius.circular(10.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Payment Method",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Colors.blue[700]),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container1 = !container1;
                        container2 = false;
                        container3 = false;
                        container4 = false;
                      });
                    },
                    child: paymentCardCOntainer(
                        "https://static.startuptalky.com/2020/09/l.jpg",
                        "Choose debit card",
                        container1),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container1 = false;
                        container2 = !container2;
                        container3 = false;
                        container4 = false;
                      });
                    },
                    child: paymentCardCOntainer(
                        "https://static.startuptalky.com/2020/09/l.jpg",
                        "Choose debit card",
                        container2),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container1 = false;
                        container2 = false;
                        container3 = !container3;
                        container4 = false;
                      });
                    },
                    child: paymentCardCOntainer(
                        "https://static.startuptalky.com/2020/09/l.jpg",
                        "Choose debit card",
                        container3),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        container1 = false;
                        container2 = false;
                        container3 = false;
                        container4 = !container4;
                      });
                    },
                    child: paymentCardCOntainer(
                        "https://static.startuptalky.com/2020/09/l.jpg",
                        "Choose debit card",
                        container4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardSelectionPage()));
              },
              child: widgets().commonNextButton(300.w, "PROCEED PAYMENT"),
            )
          ],
        ),
      ),
    );
  }

  Container paymentCardCOntainer(String linkOfImage, userEmail, bool bool) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        children: [
          Container(
            height: 70.h,
            width: 70.w,
            child: Image.network("$linkOfImage"),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "$userEmail",
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "   Choose a debit card",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 70.w,
          ),
          bool ? Icon(Icons.check_circle, color: Colors.amber) : Container()
        ],
      ),
    );
  }
}
