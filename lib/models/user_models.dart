import 'dart:convert';

class UserModels {
  final String name;
  final String? photoUrl;
  UserModels({
    this.photoUrl,
    required this.name,
  });
  Map<String, dynamic> toMap() => {"name": name, "photoUrl": photoUrl};
  String toJson() => jsonEncode(toMap());
  factory UserModels.fromMap(Map<String, dynamic> map) {
    return UserModels(name: map['name'], photoUrl: map['photoUrl']);
  }
  factory UserModels.fromJson(String map) =>
      UserModels.fromMap(jsonDecode(map));
}
