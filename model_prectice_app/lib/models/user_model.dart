class UserNameModel {
  String? name;
  int? age;
  String? profession;
  String? image;

  UserNameModel({
    required this.name,
    required this.age,
    required this.profession,
    this.image,
  });

  UserNameModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    profession = json['profession'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['profession'] = this.profession;
    data['image'] = this.image;
    return data;
  }
}
