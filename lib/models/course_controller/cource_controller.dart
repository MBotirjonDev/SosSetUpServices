// To parse this JSON data, do
//
//     final courseModel = courseModelFromJson(jsonString);

import 'dart:convert';

CourseModel courseModelFromJson(String str) => CourseModel.fromJson(json.decode(str));

String courseModelToJson(CourseModel data) => json.encode(data.toJson());

class CourseModel {
    CourseModel({
        this.id,
        this.paynetCourse,
        this.sendMoneyPlasticYenToUzs,
        this.sendMoneyPlasticYenToUsd,
        this.sendMoneyCashYenToUsd,
        this.sendMoneyCashUsdToUsdPercent,
        this.usdToUzs,
    });

    String? id;
    int? paynetCourse;
    int? sendMoneyPlasticYenToUzs;
    int? sendMoneyPlasticYenToUsd;
    int? sendMoneyCashYenToUsd;
    int? sendMoneyCashUsdToUsdPercent;
    int? usdToUzs;

    factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        id: json["id"],
        paynetCourse: json["paynetCourse"],
        sendMoneyPlasticYenToUzs: json["sendMoneyPlasticYenToUzs"],
        sendMoneyPlasticYenToUsd: json["sendMoneyPlasticYenToUsd"],
        sendMoneyCashYenToUsd: json["sendMoneyCashYenToUsd"],
        sendMoneyCashUsdToUsdPercent: json["sendMoneyCashUsdToUsdPercent"],
        usdToUzs: json["usdToUzs"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "paynetCourse": paynetCourse,
        "sendMoneyPlasticYenToUzs": sendMoneyPlasticYenToUzs,
        "sendMoneyPlasticYenToUsd": sendMoneyPlasticYenToUsd,
        "sendMoneyCashYenToUsd": sendMoneyCashYenToUsd,
        "sendMoneyCashUsdToUsdPercent": sendMoneyCashUsdToUsdPercent,
        "usdToUzs": usdToUzs,
    };
}
