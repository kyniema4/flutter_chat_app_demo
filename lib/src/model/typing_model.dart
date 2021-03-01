class TypingModel {
  String idTyping;
  String userName;
  bool typing;

  TypingModel({this.idTyping, this.userName, this.typing});

  factory TypingModel.fromJson(Map<String, dynamic> json) {
    return new TypingModel(
        idTyping: json['idTyping'] ?? "",
        userName: json['userName'] ?? "",
        typing: json['typing'] ?? "");
  }

  Map<String, dynamic> toJson() {
    return {
      'idTyping': this.idTyping,
      'userName': this.userName,
      'Typing': this.typing,
    };
  }
}
