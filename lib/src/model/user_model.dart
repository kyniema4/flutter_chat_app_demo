import 'dart:convert';

class UserModel {
  String id;
  String userName;
  int number;
  String avatar;

  UserModel({this.id, this.userName, this.number, this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> parsedJson) {
    return new UserModel(
        id: parsedJson['id'] ?? parsedJson['_id'] ?? "",
        userName: parsedJson['userName'] ?? "",
        number: parsedJson['number'] ?? "",
        avatar: parsedJson['avatar'] ?? "",);
  }
  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "userName": this.userName,
      "number": this.number,
      "avatar": this.avatar
    };
  }
  //Data Local
  factory UserModel.fromLocalDatabaseJson(Map<String, dynamic> parsedJson) {
    return new UserModel(
        id: parsedJson['id'] ?? parsedJson['_id'] ?? "",
        userName: parsedJson['userName'] ?? "",
        number: parsedJson['number'] ?? "",
        avatar: parsedJson['avatar'] ?? "",);
  }

  Map<String, dynamic> toLocalDatabaseJson() {
    return{
      "id": this.id,
      "userName": this.userName,
      "number": this.number,
      "avatar": this.avatar
    };
  }

}
