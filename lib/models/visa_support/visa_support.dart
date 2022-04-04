// To parse this JSON data, do
//
//     final visaModel = visaModelFromJson(jsonString);

import 'dart:convert';

VisaModel visaModelFromJson(String str) => VisaModel.fromJson(json.decode(str));

String visaModelToJson(VisaModel data) => json.encode(data.toJson());

class VisaModel {
    VisaModel({
        this.id,
        this.title,
        this.companyInfo,
        this.caption,
        this.userId,
    });

    String? id;
    String? title;
    String? companyInfo;
    String? caption;
    String? userId;

    factory VisaModel.fromJson(Map<String, dynamic> json) => VisaModel(
        id: json["id"],
        title: json["title"],
        companyInfo: json["companyInfo"],
        caption: json["caption"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "companyInfo": companyInfo,
        "caption": caption,
        "userId": userId,
    };
}
