class User {
  int id;
  String name;
  String email;
  String createdAt;
  String updatedAt;

  User(this.id, this.name, this.email, this.createdAt, this.updatedAt);
}

class Data {
  int id;
  String name;
  String email;
  int otp;
  String createdAt;
  String updatedAt;
  Data(
      this.id, this.otp, this.name, this.email, this.createdAt, this.updatedAt);
}

class Profile {
  int id;
  int userId;
  String name;
  String email;
  String createdAt;
  String updatedAt;
  Profile(this.id, this.userId, this.name, this.email, this.createdAt,
      this.updatedAt);
}

class Authentication {
  User? user;
  String token;
  Authentication(this.user, this.token);
}

class ForgetPassword {
  String user;
  ForgetPassword(this.user);
}

class Register {
  Data? data;
  Profile? profile;
  String token;
  Register(this.data, this.profile, this.token);
}

class ProfilePage {
  Data? data;
  ProfilePage(this.data);
}
