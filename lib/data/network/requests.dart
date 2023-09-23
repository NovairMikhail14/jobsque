class LoginRequest {
  String email;
  String password;

  LoginRequest(this.email, this.password);
}

class ForgetPasswordRequest {
  String email;

  ForgetPasswordRequest(this.email);
}

class RegisterRequest {
  String name;
  String email;
  String password;

  RegisterRequest(this.name, this.email, this.password);
}

class ProfileViewRequest {}

class UpdateProfileRequest {
  String token;

  UpdateProfileRequest(this.token);
}

class EditProfileRequest {
  String token;

  EditProfileRequest(this.token);
}

class EditProfileLanguageRequest {
  String token;

  EditProfileLanguageRequest(this.token);
}

class EditPortfolioRequest {
  String token;

  EditPortfolioRequest(this.token);
}
