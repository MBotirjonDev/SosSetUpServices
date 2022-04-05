import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/forgot_reg_auth_text_button.dart';
import 'package:sossetupservice/core/components/text_auth_forgot_reg.dart';
import 'package:sossetupservice/core/components/title_all_auth_pages.dart';
import 'package:sossetupservice/core/constants/colors.dart';

// ignore: must_be_immutable
class AuthViewCubit extends StatefulWidget {
  AuthViewCubit({Key? key}) : super(key: key);

  @override
  State<AuthViewCubit> createState() => _AuthViewCubitState();
}

class _AuthViewCubitState extends State<AuthViewCubit> {
  bool eye = true;
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleAllAuthPages(title: "Kirish", size: 36.sp),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        shadowColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                        elevation: 7.h,
                        child: TextFormField(
                          controller: phoneController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Can\'t be empty';
                            }
                            if (text.length < 4) {
                              return 'Too short';
                            } else {
                              return null;
                            }
                          },
                          showCursor: true,
                          cursorColor: cursorColor,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 14.w),
                              child: SizedBox(
                                width: 75.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size: 34.h,
                                      color: mainColor,
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: blackColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Material(
                        shadowColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                        elevation: 5.h,
                        child: TextFormField(
                          controller: passwordController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Can\'t be empty';
                            }
                            if (text.length < 4) {
                              return 'Too short';
                            } else {
                              return null;
                            }
                          },
                          obscureText: eye,
                          cursorColor: cursorColor,
                          showCursor: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Parol",
                            hintStyle: TextStyle(fontSize: 19.sp),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 14.w),
                              child: Icon(
                                Icons.lock,
                                size: 38.h,
                                color: mainColor,
                              ),
                            ),
                            suffixIconColor: greyColor,
                            suffixIcon: IconButton(
                              icon: eye
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      size: 30.h,
                                    )
                                  : Icon(
                                      CupertinoIcons.eye_slash_fill,
                                      size: 30.h,
                                    ),
                              onPressed: () {
                                setState(() {
                                  eye = !eye;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185.w),
                child: TextButton(
                  child: Text(
                    "Parolni unutdingizmi?",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 17.sp,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/forgot",
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.h),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(450.w, 60.h),
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r))),
                  child: Text(
                    "Kirish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27.sp,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );
                      Navigator.pushNamed(context, "/bottom");
                    } else {}
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextForgotAuthReg(text: "Sizda account yo'qmi?"),
                  ForgotRegAuthTextButton(
                      text: "Yangi kiriting!", navigator: "/register"),
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
