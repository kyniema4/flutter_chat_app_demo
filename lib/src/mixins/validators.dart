class Validators {
  static isValidName(String name) {
    final regularExpression = RegExp(r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
    return regularExpression.hasMatch(name);
  }
  static isValidPassword(String password) => password.length >= 4;
}