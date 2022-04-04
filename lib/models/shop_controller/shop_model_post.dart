// To parse this JSON data, do
//
//     final shop = shopFromJson(jsonString);

import 'dart:convert';

ShopModel shopFromJson(String str) => ShopModel.fromJson(json.decode(str));

String shopToJson(ShopModel data) => json.encode(data.toJson());

class ShopModel {
    ShopModel({
        this.id,
        this.title,
        this.shopType,
        this.logoPhoto,
        this.photoList,
        this.about,
        this.caption,
    });

    String? id;
    String? title;
    String? shopType;
    String? logoPhoto;
    List<String>? photoList;
    String? about;
    String? caption;

    factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        id: json["id"],
        title: json["title"],
        shopType: json["shopType"],
        logoPhoto: json["logoPhoto"],
        photoList: List<String>.from(json["photoList"].map((x) => x)),
        about: json["about"],
        caption: json["caption"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "shopType": shopType,
        "logoPhoto": logoPhoto,
        "photoList": List<dynamic>.from(photoList!.map((x) => x)),
        "about": about,
        "caption": caption,
    };
}
