// To parse this JSON data, do
//
//     final sendMoney = sendMoneyFromJson(jsonString);

import 'dart:convert';

SendMoney sendMoneyFromJson(String str) => SendMoney.fromJson(json.decode(str));

String sendMoneyToJson(SendMoney data) => json.encode(data.toJson());

class SendMoney {
    SendMoney({
        this.id,
        this.userId,
        this.sendMoneyYen,
        this.payNumber,
        this.paid,
    });

    String? id;
    String? userId;
    int? sendMoneyYen;
    String? payNumber;
    bool? paid;

    factory SendMoney.fromJson(Map<String, dynamic> json) => SendMoney(
        id: json["id"],
        userId: json["userId"],
        sendMoneyYen: json["sendMoneyYen"],
        payNumber: json["payNumber"],
        paid: json["paid"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "sendMoneyYen": sendMoneyYen,
        "payNumber": payNumber,
        "paid": paid,
    };
}
