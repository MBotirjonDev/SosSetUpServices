import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class TextForgotAuth extends StatelessWidget {
  TextEditingController? phoneController;
  TextForgotAuth([this.phoneController]);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Can\'t be empty';
        }
        if (text.length < 4) {
          return 'Too short';
        }
        return null;
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
    );
  }
}
