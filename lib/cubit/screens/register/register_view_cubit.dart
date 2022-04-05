import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/components/forgot_reg_auth_text_button.dart';
import 'package:sossetupservice/core/components/text_auth_forgot_reg.dart';
import 'package:sossetupservice/core/components/title_all_auth_pages.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/core/constants/platform.dart';
import 'package:sossetupservice/cubit/screens/register/dropdown/dropdownbutton_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/dropdownfornumber/phone_number_view.dart';
import 'package:sossetupservice/cubit/screens/register/register_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/register_state.dart';
import 'package:sossetupservice/services/sign_up_reg.dart';

class RegisterViewCubit extends StatefulWidget {
  const RegisterViewCubit({Key? key}) : super(key: key);

  @override
  State<RegisterViewCubit> createState() => _RegisterViewCubitState();
}

class _RegisterViewCubitState extends State<RegisterViewCubit> {
  bool eye = true;
  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final _formKeyReg = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(
        SampleSignUp(),
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (BuildContext context, RegisterState state) {
                      if (state is RegisterError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              state.error.toString(),
                            ),
                          ),
                        );
                      }
                    },
                    builder: (BuildContext context, RegisterState state) {
                      if (state is RegisterInitial) {
                        return CheckYourPlatform.yourPlatform();
                      } else if (state is RegisterLoading) {
                        return CheckYourPlatform.yourPlatform();
                      } else if (state is RegisterViewCubit) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TitleAllAuthPages(
                                title: "Ro'yxatdan o'tish", size: 34.sp),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Form(
                                key: _formKeyReg,
                                child: Column(
                                  children: [
                                    Material(
                                      shadowColor: mainColor,
                                      elevation: 7.h,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: TextFormField(
                                        onChanged: (text){
                                          
                                        },
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Can\'t be empty';
                                          }
                                          if (text.length < 4) {
                                            return 'Too short';
                                          }
                                          return null;
                                        },
                                        controller: nameController,
                                        cursorColor: cursorColor,
                                        showCursor: true,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          hintText: "Ism",
                                          hintStyle: TextStyle(fontSize: 19.sp),
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
                                            child: Icon(
                                              CupertinoIcons.person,
                                              size: 38.h,
                                              color: mainColor,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    Material(
                                      shadowColor: mainColor,
                                      elevation: 7.h,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: TextFormField(
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Can\'t be empty';
                                          }
                                          if (text.length < 4) {
                                            return 'Too short';
                                          }
                                          return null;
                                        },
                                        controller: surnameController,
                                        cursorColor: cursorColor,
                                        showCursor: true,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          hintText: "Familiya",
                                          hintStyle: TextStyle(fontSize: 19.sp),
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
                                            child: Icon(
                                              CupertinoIcons.person,
                                              size: 38.h,
                                              color: mainColor,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Material(
                                      shadowColor: mainColor,
                                      elevation: 7.0.h,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: TextFormField(
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Can\'t be empty';
                                          }
                                          if (text.length < 4) {
                                            return 'Too short';
                                          }
                                          return null;
                                        },
                                        controller: countryController,
                                        cursorColor: cursorColor,
                                        showCursor: true,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          labelText: "Davlat",
                                          labelStyle:
                                              TextStyle(color: greyColor),
                                          hintText: "Davlat",
                                          hintStyle: TextStyle(fontSize: 19.sp),
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
                                            child: Icon(
                                              CupertinoIcons.location,
                                              size: 38.h,
                                              color: mainColor,
                                            ),
                                          ),
                                          suffixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(right: 12.w),
                                            child: const DropDownButton(),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    Material(
                                      shadowColor: mainColor,
                                      elevation: 7.0.h,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: TextFormField(
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Can\'t be empty';
                                          }
                                          if (text.length < 4) {
                                            return 'Too short';
                                          }
                                          return null;
                                        },
                                        controller: phoneController,
                                        cursorColor: cursorColor,
                                        showCursor: true,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
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
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Material(
                                      shadowColor: mainColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      elevation: 5.h,
                                      child: TextFormField(
                                        controller: passwordController,
                                        validator: (text) {
                                          if (text == null || text.isEmpty) {
                                            return 'Can\'t be empty';
                                          }
                                          if (text.length < 4) {
                                            return 'Too short';
                                          }
                                          return null;
                                        },
                                        obscureText: eye,
                                        cursorColor: cursorColor,
                                        showCursor: true,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          hintText: "Parol",
                                          hintStyle: TextStyle(fontSize: 19.sp),
                                          prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
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
                                                    CupertinoIcons
                                                        .eye_slash_fill,
                                                    size: 30.h,
                                                  ),
                                            onPressed: () {
                                              setState(() {
                                                eye = !eye;
                                              });
                                            },
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    Padding(
                                      padding: EdgeInsets.all(2.h),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(450.w, 60.h),
                                            primary: mainColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.r))),
                                        child: Text(
                                          "Kirish",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 27.sp,
                                          ),
                                        ),
                                        onPressed: () {
                                          if (_formKeyReg.currentState!
                                              .validate()) {
                                            Navigator.pushNamed(
                                                context, "/bottom");
                                          }
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextForgotAuthReg(
                                            text:
                                                "Sizda allaqachon account bormi?"),
                                        ForgotRegAuthTextButton(
                                            text: "Tizimga kirish",
                                            navigator: "/auth"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        final error = state as RegisterError;
                        return Center(
                          child: Text(
                            error.toString(),
                          ),
                        );
                      }
                    },
                  ),
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
      ),
    );
  }
}
