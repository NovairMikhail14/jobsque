import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import 'package:jobsque/domain/model/models.dart';

import '../responses/auth_response/responses.dart';

extension UserResponseMapper on UserResponse? {
  User toDomain() {
    return User(this?.id.orZero() ?? Constants.zero,
        this?.name.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.createdAt.orEmpty() ?? Constants.empty,
        this?.updatedAt.orEmpty() ?? Constants.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.user.toDomain() , this?.token.orEmpty() ?? "");
  }
}
extension ForgetPasswordResponseMapper on ForgetPasswordResponse? {
  ForgetPassword toDomain() {
    return ForgetPassword(this?.user.orEmpty()??"");
  }
}