// To parse this JSON data, do
//
//     final sendMoney = sendMoneyFromJson(jsonString);

import 'dart:convert';

SendMoneyCompany sendMoneyFromJson(String str) => SendMoneyCompany.fromJson(json.decode(str));

String sendMoneyToJson(SendMoneyCompany data) => json.encode(data.toJson());

class SendMoneyCompany {
    SendMoneyCompany({
        this.id,
        this.brandName,
        this.companyName,
        this.address,
        this.phoneNumber,
        this.comment,
    });

    String? id;
    String? brandName;
    String? companyName;
    String? address;
    String? phoneNumber;
    String? comment;

    factory SendMoneyCompany.fromJson(Map<String, dynamic> json) => SendMoneyCompany(
        id: json["id"],
        brandName: json["brandName"],
        companyName: json["companyName"],
        address: json["address"],
        phoneNumber: json["phoneNumber"],
        comment: json["comment"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brandName": brandName,
        "companyName": companyName,
        "address": address,
        "phoneNumber": phoneNumber,
        "comment": comment,
    };
}
