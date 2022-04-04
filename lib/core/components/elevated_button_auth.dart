import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

// ignore: must_be_immutable
class ElevatedButtonCom extends StatelessWidget {
  String title;
  String navigator;
  ElevatedButtonCom( this.title, this.navigator);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(450.w, 60.h),
          primary: mainColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r))),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 27.sp,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, navigator);
      },
    );
  }
}
