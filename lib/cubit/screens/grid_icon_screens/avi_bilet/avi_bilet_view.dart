import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/firstDrop/drop_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/drop_view.dart';

class AviTicketViewCubit extends StatelessWidget {
  const AviTicketViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height.h,
        width: MediaQuery.of(context).size.width.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/avi.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SOS Avi Bilet",
              style: TextStyle(
                color: whiteColor,
                fontSize: 35.h,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Qayerdan",
                    style: TextStyle(
                      fontSize: 25.h,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    "Qayerga",
                    style: TextStyle(
                      fontSize: 25.h,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: DropDownFirstWhereView(),
                  ),
                  Image.asset(
                    "assets/images/air.png",
                    height: 30.h,
                  ),
                  const Expanded(
                    flex: 1,
                    child: DropDownSecondWhereView(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    color: greenColor,
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    color: greenColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            // ! bir yana qara qisqaradi
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Vaqti",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 25.sp,
                      ),
                    ),
                    Container(
                      color: whiteColor,
                      width: 200.w,
                      height: 2.h,
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    Text(
                      "Vaqti",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 25.sp,
                      ),
                    ),
                    Container(
                      color: whiteColor,
                      width: 200.w,
                      height: 2.h,
                    ),
                  ],
                ),
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}
