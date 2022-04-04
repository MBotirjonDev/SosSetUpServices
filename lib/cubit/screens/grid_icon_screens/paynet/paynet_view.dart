import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class PaynetViewCubit extends StatelessWidget {
  const PaynetViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          "Paynet",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.h,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          Image.asset(
            "assets/images/CDMA.png",
            height: 140.h,
            width: 180.w,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 20.h),
          Text(
            "UzMobile",
            style: TextStyle(fontSize: 25.h, color: blackColor),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(30.r),
                    shadowColor: mainColor,
                    elevation: 4.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: cursorColor,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: SizedBox(
                            width: 120.w,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: mainColor,
                                  size: 40.h,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  "+998 ",
                                  style: TextStyle(
                                    color: blackColor,
                                    fontSize: 20.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        hintText: "--- -- --",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Material(
                    borderRadius: BorderRadius.circular(30.r),
                    shadowColor: mainColor,
                    elevation: 4.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: cursorColor,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Icon(
                            CupertinoIcons.money_yen,
                            color: mainColor,
                            size: 40.h,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        hintText: "To'lov yenini kiriting (minimum 500 yen)",
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      "minimum 500 yen bo'lishi kerak!",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 20.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 250.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ElevatedButtonCom("Oldinga", "/"),
          ),
        ],
      ),
    );
  }
}
