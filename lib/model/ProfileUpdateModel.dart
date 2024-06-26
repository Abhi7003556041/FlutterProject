class ProfileUpdateModel {
  String? sId;
  String? name;
  String? email;
  String? password;
  int? year;
  String? fatherName;
  int? aadharCard;
  String? gender;
  String? registrationNumber;
  String? department;
  String? section;
  String? batch;
  String? avatar;
  String? dob;
  int? studentMobileNumber;
  int? fatherMobileNumber;
  List<Subjects>? subjects;
  int? iV;

  ProfileUpdateModel(
      {this.sId,
        this.name,
        this.email,
        this.password,
        this.year,
        this.fatherName,
        this.aadharCard,
        this.gender,
        this.registrationNumber,
        this.department,
        this.section,
        this.batch,
        this.avatar,
        this.dob,
        this.studentMobileNumber,
        this.fatherMobileNumber,
        this.subjects,
        this.iV});

  ProfileUpdateModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    year = json['year'];
    fatherName = json['fatherName'];
    aadharCard = json['aadharCard'];
    gender = json['gender'];
    registrationNumber = json['registrationNumber'];
    department = json['department'];
    section = json['section'];
    batch = json['batch'];
    avatar = json['avatar'];
    dob = json['dob'];
    studentMobileNumber = json['studentMobileNumber'];
    fatherMobileNumber = json['fatherMobileNumber'];
    if (json['subjects'] != null) {
      subjects = <Subjects>[];
      json['subjects'].forEach((v) {
        subjects!.add(new Subjects.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['year'] = this.year;
    data['fatherName'] = this.fatherName;
    data['aadharCard'] = this.aadharCard;
    data['gender'] = this.gender;
    data['registrationNumber'] = this.registrationNumber;
    data['department'] = this.department;
    data['section'] = this.section;
    data['batch'] = this.batch;
    data['avatar'] = this.avatar;
    data['dob'] = this.dob;
    data['studentMobileNumber'] = this.studentMobileNumber;
    data['fatherMobileNumber'] = this.fatherMobileNumber;
    if (this.subjects != null) {
      data['subjects'] = this.subjects!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class Subjects {
  String? name;
  String? sId;

  Subjects({this.name, this.sId});

  Subjects.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['_id'] = this.sId;
    return data;
  }
}
