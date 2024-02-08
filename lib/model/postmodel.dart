// To parse this JSON data, do
//
//     final tutor = tutorFromJson(jsonString);

import 'dart:convert';

List<Tutor> tutorFromJson(String str) => List<Tutor>.from(json.decode(str).map((x) => Tutor.fromJson(x)));

String tutorToJson(List<Tutor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tutor {
  String id;
  String pro;
  String name;
  String subjects;
  String location;
  int v;

  Tutor({
    required this.id,
    required this.pro,
    required this.name,
    required this.subjects,
    required this.location,
    required this.v,
  });

  factory Tutor.fromJson(Map<String, dynamic> json) => Tutor(
    id: json["_id"],
    pro: json["pro"],
    name: json["name"],
    subjects: json["subjects"],
    location: json["location"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "pro": pro,
    "name": name,
    "subjects": subjects,
    "location": location,
    "__v": v,
  };
}
