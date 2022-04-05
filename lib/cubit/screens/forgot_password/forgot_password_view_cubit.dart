import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/components/forgot_reg_auth_text_button.dart';
import 'package:sossetupservice/core/components/text_auth_forgot_reg.dart';
import 'package:sossetupservice/core/components/text_phone_auth_forgor.dart';
import 'package:sossetupservice/core/components/title_all_auth_pages.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class ForgotPasswordViewCubit extends StatelessWidget {
  const ForgotPasswordViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleAllAuthPages(title: "Parolni unutdingizmi?", size: 34.sp),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        shadowColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                        elevation: 7.h,
                        child: TextForgotAuth(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.all(20.h),
                child: ElevatedButtonCom(
                  "Kirish",
                  "/bottom",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ForgotRegAuthTextButton(
                      text: "Bosh oynaga", navigator: "/auth"),
                  TextForgotAuthReg(text: "qaytish"),
                ],
              ),
            ],
          ),
          Positioned(
            top: -150.h,
            right: -150.w,
            child: CircleAvatar(
              radius: 150.r,
              backgroundColor: mainColor,
            ),
          ),
          Positioned(
            bottom: -150.h,
            left: -150.w,
            child: CircleAvatar(
              radius: 150.r,
              backgroundColor: mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
