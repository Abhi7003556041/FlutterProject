class LoginResponse {
  bool? success;
  String? token;
  String? id;
  String? email;
  String? name;
  String? avatar;
  String? registrationNumber;
  String? department;
  int? year;
  String? batch;

  LoginResponse(
      {this.success,
        this.token,
        this.id,
        this.email,
        this.name,
        this.avatar,
        this.registrationNumber,
        this.department,
        this.year,
        this.batch});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token'];
    id = json['id'];
    email = json['email'];
    name = json['name'];
    avatar = json['avatar'];
    registrationNumber = json['registrationNumber'];
    department = json['department'];
    year = json['year'];
    batch = json['batch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['token'] = this.token;
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['registrationNumber'] = this.registrationNumber;
    data['department'] = this.department;
    data['year'] = this.year;
    data['batch'] = this.batch;
    return data;
  }
}
