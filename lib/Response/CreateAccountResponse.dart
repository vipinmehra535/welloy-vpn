// To parse this JSON data, do
//
//     final createAccountResponse = createAccountResponseFromJson(jsonString);

import 'dart:convert';

CreateAccountResponse createAccountResponseFromJson(String str) =>
    CreateAccountResponse.fromJson(json.decode(str));

String createAccountResponseToJson(CreateAccountResponse data) =>
    json.encode(data.toJson());

class CreateAccountResponse {
  CreateAccountResponse({
    required this.data,
  });

  Data data;

  factory CreateAccountResponse.fromJson(Map<String, dynamic> json) =>
      CreateAccountResponse(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.username,
    required this.status,
    required this.wgIp,
    required this.wgPrivateKey,
    required this.wgPublicKey,
    required this.updated,
    required this.created,
  });

  int id;
  String username;
  String status;
  String wgIp;
  String wgPrivateKey;
  String wgPublicKey;
  DateTime updated;
  DateTime created;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        username: json["username"],
        status: json["status"],
        wgIp: json["wg_ip"],
        wgPrivateKey: json["wg_private_key"],
        wgPublicKey: json["wg_public_key"],
        updated: DateTime.parse(json["updated"]),
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "status": status,
        "wg_ip": wgIp,
        "wg_private_key": wgPrivateKey,
        "wg_public_key": wgPublicKey,
        "updated": updated.toIso8601String(),
        "created": created.toIso8601String(),
      };
}
