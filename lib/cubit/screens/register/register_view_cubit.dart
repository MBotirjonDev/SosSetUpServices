import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/auth_reg_pass_text_form.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/components/forgot_reg_auth_text_button.dart';
import 'package:sossetupservice/core/components/text_auth_forgot_reg.dart';
import 'package:sossetupservice/core/components/text_register_name.dart';
import 'package:sossetupservice/core/components/title_all_auth_pages.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/cubit/screens/register/dropdown/dropdownbutton_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/dropdownfornumber/phone_number_view.dart';

class RegisterViewCubit extends StatelessWidget {
  const RegisterViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleAllAuthPages(title: "Ro'yxatdan o'tish", size: 34.sp),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              child: Column(
                children: [
                  TextRegisterName(hintTextForm: "Ism"),
                  SizedBox(height: 15.h),
                  TextRegisterName(hintTextForm: "Familiya"),
                  SizedBox(height: 20.h),
                  Material(
                    shadowColor: mainColor,
                    elevation: 7.0.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    child: TextFormField(
                      cursorColor: cursorColor,
                      showCursor: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Davlat",
                        labelStyle: TextStyle(color: greyColor),
                        hintText: "Davlat",
                        hintStyle: TextStyle(fontSize: 19.sp),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 14.w),
                          child: Icon(
                            CupertinoIcons.location,
                            size: 38.h,
                            color: mainColor,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 12.w),
                          child: const DropDownButton(),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Material(
                    shadowColor: mainColor,
                    elevation: 7.0.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    child: TextFormField(
                      cursorColor: cursorColor,
                      showCursor: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 14.w),
                          child: SizedBox(
                            width: 120.w,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 38.h,
                                  color: mainColor,
                                ),
                                SizedBox(width: 8.w),
                                const DropDownButtonPhoneNumber(),
                              ],
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Material(
                    shadowColor: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    elevation: 5.h,
                    child: AuthRegPassTextForm(),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.all(2.h),
                    child: ElevatedButtonCom(
                      "Kirish",
                      "/bottom",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextForgotAuthReg(
                          text: "Sizda allaqachon account bormi?"),
                      ForgotRegAuthTextButton(
                          text: "Tizimga kirish", navigator: "/auth"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
