// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.data,
  });

  List<Datum> data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.name,
  });

  String name;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
