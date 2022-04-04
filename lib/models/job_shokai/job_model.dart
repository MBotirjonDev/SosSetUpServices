// To parse this JSON data, do
//
//     final jobModel = jobModelFromJson(jsonString);

import 'dart:convert';

JobModel jobModelFromJson(String str) => JobModel.fromJson(json.decode(str));

String jobModelToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
    JobModel({
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

    factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
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
