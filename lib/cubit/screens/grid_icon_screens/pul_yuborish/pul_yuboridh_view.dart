import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class TrasferMoneyViewCubit extends StatefulWidget {
  const TrasferMoneyViewCubit({Key? key}) : super(key: key);

  @override
  State<TrasferMoneyViewCubit> createState() => _TrasferMoneyViewCubitState();
}

class _TrasferMoneyViewCubitState extends State<TrasferMoneyViewCubit>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text(
          "Pul yuborish",
          style: TextStyle(
            color: whiteColor,
            fontSize: 20.sp,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultTabController(
                length: 2,
                child: SizedBox(
                  height: 66.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ButtonsTabBar(
                    controller: tabController,
                    buttonMargin: EdgeInsets.only(left: 18.w),
                    labelStyle: TextStyle(fontSize: 25.sp, color: whiteColor),
                    unselectedLabelStyle:
                        TextStyle(color: mainColor, fontSize: 25.sp),
                    unselectedBorderColor: mainColor,
                    borderColor: mainColor,
                    borderWidth: 2.h,
                    unselectedBackgroundColor: whiteColor,
                    backgroundColor: mainColor,
                    tabs: const [
                      Tab(
                        text: "   Oziq ovqat   ",
                      ),
                      Tab(
                        text: "  No oziq ovqat  ",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          elevation: 4.h,
                          shadowColor: mainColor,
                          borderRadius: BorderRadius.circular(20.r),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: cursorColor,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              prefixIcon: Container(
                                width: 110.w,
                                padding: EdgeInsets.only(left: 15.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.card_membership,
                                      size: 30.h,
                                      color: mainColor,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      "8600",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Material(
                          borderRadius: BorderRadius.circular(20.r),
                          shadowColor: mainColor,
                          elevation: 4.h,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: cursorColor,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  CupertinoIcons.money_yen,
                                  size: 40.h,
                                  color: mainColor,
                                ),
                              ),
                              hintStyle:
                                  TextStyle(color: greyColor, fontSize: 16.h),
                              hintText:
                                  "Amaliyot summa yenda (minimum 500 yen)",
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "minimum 500 yen bo'lishi kerak!",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 22.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                            padding: EdgeInsets.only(top: 10.h, left: 20.w),
                            width: MediaQuery.of(context).size.width.w,
                            height: 240.h,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(25.r)),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SOS",
                                      style: TextStyle(
                                          color: greyColor,
                                          fontSize: 25.h,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "set up sservice",
                                      style: TextStyle(
                                          color: greyColor, fontSize: 18.h),
                                    ),
                                    SizedBox(height: 50.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "0 yenna",
                                          style: TextStyle(
                                              fontSize: 25.h,
                                              color: greyColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 40.h,
                                          width: 240.w,
                                          color: redColor,
                                          child: Text(
                                            "Pul yetarli emas",
                                            style: TextStyle(
                                              fontSize: 25.h,
                                              color: whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 50.h),
                                    Text(
                                      "972778977",
                                      style: TextStyle(
                                        color: greyColor,
                                        fontSize: 25.h,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 5.w, right: 5.w, top: 20.h, bottom: 120.h),
                          child: ElevatedButtonCom(
                            "To'lash",
                            "/",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(15.r),
                            elevation: 4.h,
                            shadowColor: greyColor,
                            child: Container(
                              padding: EdgeInsets.only(top: 20.h, left: 10.w),
                              height: 160.h,
                              width: MediaQuery.of(context).size.width.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Furikomi uz",
                                    style: TextStyle(
                                      fontSize: 25.h,
                                      fontWeight: FontWeight.bold,
                                      color: blackColor,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    "Toshkent,Andijon,Farg'ona,Namangan,Samarqand ga omonatingizni yetkazib beramiz",
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 18.h,
                                    ),
                                  ),
                                  ExpansionTile(
                                    leading: Icon(
                                      Icons.call,
                                      size: 40.h,
                                      color: greenColor,
                                    ),
                                    title: const Text(""),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
