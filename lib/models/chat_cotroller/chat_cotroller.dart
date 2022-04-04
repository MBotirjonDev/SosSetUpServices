// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
    ChatModel({
        this.id,
        this.userId,
        this.caption,
    });

    String? id;
    String? userId;
    String? caption;

    factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        id: json["id"],
        userId: json["userId"],
        caption: json["caption"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "caption": caption,
    };
}
