// To parse this JSON data, do
//
//     final cargoCompanyModel = cargoCompanyModelFromJson(jsonString);

import 'dart:convert';

CargoCompanyModel cargoCompanyModelFromJson(String str) =>
    CargoCompanyModel.fromJson(json.decode(str));

String cargoCompanyModelToJson(CargoCompanyModel data) =>
    json.encode(data.toJson());

class CargoCompanyModel {
  CargoCompanyModel({
    this.id,
    this.nameUser,
    this.phoneUser,
    this.title,
    this.companyInfo,
    this.caption,
    this.userId,
  });

  String? id;
  String? nameUser;
  String? phoneUser;
  String? title;
  String? companyInfo;
  String? caption;
  String? userId;

  factory CargoCompanyModel.fromJson(Map<String, dynamic> json) =>
      CargoCompanyModel(
        id: json["id"],
        nameUser: json["nameUser"],
        phoneUser: json["phoneUser"],
        title: json["title"],
        companyInfo: json["companyInfo"],
        caption: json["caption"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameUser": nameUser,
        "phoneUser": phoneUser,
        "title": title,
        "companyInfo": companyInfo,
        "caption": caption,
        "userId": userId,
      };
}
