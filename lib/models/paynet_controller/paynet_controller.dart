// To parse this JSON data, do
//
//     final paynetModel = paynetModelFromJson(jsonString);

import 'dart:convert';

PaynetModel paynetModelFromJson(String str) => PaynetModel.fromJson(json.decode(str));

String paynetModelToJson(PaynetModel data) => json.encode(data.toJson());

class PaynetModel {
    PaynetModel({
        this.id,
        this.userId,
        this.paynetYen,
        this.payNumber,
        this.paynetUzs,
        this.paid,
    });

    String? id;
    String? userId;
    int? paynetYen;
    String? payNumber;
    int? paynetUzs;
    bool? paid;

    factory PaynetModel.fromJson(Map<String, dynamic> json) => PaynetModel(
        id: json["id"],
        userId: json["userId"],
        paynetYen: json["paynetYen"],
        payNumber: json["payNumber"],
        paynetUzs: json["paynetUzs"],
        paid: json["paid"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "paynetYen": paynetYen,
        "payNumber": payNumber,
        "paynetUzs": paynetUzs,
        "paid": paid,
    };
}
