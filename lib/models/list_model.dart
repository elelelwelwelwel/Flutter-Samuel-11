// To parse this JSON data, do
//
//     final listModel = listModelFromJson(jsonString);

import 'dart:convert';

ListModel listModelFromJson(String str) => ListModel.fromJson(json.decode(str));

String listModelToJson(ListModel data) => json.encode(data.toJson());

class ListModel {
    final List<Map<String, String?>> teams;

    ListModel({
        required this.teams,
    });

    factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
        teams: List<Map<String, String?>>.from(json["teams"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
}
