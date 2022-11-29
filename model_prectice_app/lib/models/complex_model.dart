class userDataModel {
  String? name;
  int? age;
  String? profession;
  String? image;
  Details? details;

  userDataModel({
    required this.name,
    required this.age,
    required this.profession,
    this.image,
    required this.details,
  });

  userDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    profession = json['profession'];
    image = json['image'];
    details =
        json['details'] != null ? Details.fromJson(json['details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['profession'] = this.profession;
    data['image'] = this.image;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    return data;
  }
}

class Details {
  String? fatherName;
  String? occupation;
  String? nationality;
  Province? province;

  Details({
    required this.fatherName,
    this.occupation,
    this.nationality,
    required this.province,
  });

  Details.fromJson(Map<String, dynamic> json) {
    fatherName = json['fatherName'];
    occupation = json['Occupation'];
    nationality = json['Nationality'];
    province = json['province'] != null
        ? new Province.fromJson(json['province'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fatherName'] = this.fatherName;
    data['Occupation'] = this.occupation;
    data['Nationality'] = this.nationality;
    if (this.province != null) {
      data['province'] = this.province!.toJson();
    }
    return data;
  }
}

class Province {
  bool? punjab;
  bool? sindh;
  bool? balochistan;
  bool? kPK;

  Province({
    required this.punjab,
    required this.sindh,
    required this.balochistan,
    required this.kPK,
  });

  Province.fromJson(Map<String, dynamic> json) {
    punjab = json['Punjab'];
    sindh = json['Sindh'];
    balochistan = json['Balochistan'];
    kPK = json['KPK'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Punjab'] = this.punjab;
    data['Sindh'] = this.sindh;
    data['Balochistan'] = this.balochistan;
    data['KPK'] = this.kPK;
    return data;
  }
}
