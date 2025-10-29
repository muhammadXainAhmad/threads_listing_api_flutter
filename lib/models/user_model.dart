class UserModel {
  String? name;

  UserModel({this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(name: json['name'] as String?);

  Map<String, dynamic> toJson() => {'name': name};
}
