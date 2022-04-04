// To parse this JSON data, do
//
//     final aviModel = aviModelFromJson(jsonString);

import 'dart:convert';

AviModel aviModelFromJson(String str) => AviModel.fromJson(json.decode(str));

String aviModelToJson(AviModel data) => json.encode(data.toJson());

class AviModel {
    AviModel({
        this.id,
        this.qayerdan,
        this.qayerga,
        this.uchish,
        this.qaytish,
        this.odam,
        this.fylType,
    });

    String? id;
    String? qayerdan;
    String? qayerga;
    DateTime? uchish;
    DateTime? qaytish;
    int? odam;
    String? fylType;

    factory AviModel.fromJson(Map<String, dynamic> json) => AviModel(
        id: json["id"],
        qayerdan: json["qayerdan"],
        qayerga: json["qayerga"],
        uchish: DateTime.parse(json["uchish"]),
        qaytish: DateTime.parse(json["qaytish"]),
        odam: json["odam"],
        fylType: json["fylType"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "qayerdan": qayerdan,
        "qayerga": qayerga,
        "uchish": uchish!.toIso8601String(),
        "qaytish": qaytish!.toIso8601String(),
        "odam": odam,
        "fylType": fylType,
    };
}
