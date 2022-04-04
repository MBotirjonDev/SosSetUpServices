// To parse this JSON data, do
//
//     final changeBalance = changeBalanceFromJson(jsonString);

import 'dart:convert';

ChangeBalance changeBalanceFromJson(String str) => ChangeBalance.fromJson(json.decode(str));

String changeBalanceToJson(ChangeBalance data) => json.encode(data.toJson());

class ChangeBalance {
    ChangeBalance({
        this.id,
        this.photoId,
        this.clientId,
        this.whoPays,
        this.chargeSum,
        this.paid,
    });

    String? id;
    String? photoId;
    String? clientId;
    String?whoPays;
    int? chargeSum;
    bool? paid;

    factory ChangeBalance.fromJson(Map<String, dynamic> json) => ChangeBalance(
        id: json["id"],
        photoId: json["photoId"],
        clientId: json["clientId"],
        whoPays: json["whoPays"],
        chargeSum: json["chargeSum"],
        paid: json["paid"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "photoId": photoId,
        "clientId": clientId,
        "whoPays": whoPays,
        "chargeSum": chargeSum,
        "paid": paid,
    };
}
