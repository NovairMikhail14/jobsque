import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import 'package:jobsque/data/responses/auth_response/auth_responses.dart';
import 'package:jobsque/domain/model/auth_models.dart';

extension UserResponseMapper on AuthUserResponse? {
  User toDomain() {
    return User(
        this?.id.orZero() ?? Constants.zero,
        this?.name.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.createdAt.orEmpty() ?? Constants.empty,
        this?.updatedAt.orEmpty() ?? Constants.empty);
  }
}

extension DataResponceMapper on DataResponse? {
  Data toDomain() {
    return Data(
        this?.id.orZero() ?? Constants.zero,
        this?.otp.orZero() ?? Constants.zero,
        this?.name.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.createdAt.orEmpty() ?? Constants.empty,
        this?.updatedAt.orEmpty() ?? Constants.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.user.toDomain(), this?.token.orEmpty() ?? Constants.empty);
  }
}

extension ProfileResponceMapper on AuthProfileResponse? {
  Profile toDomain() {
    return Profile(
        this?.id.orZero() ?? Constants.zero,
        this?.userId.orZero() ?? Constants.zero,
        this?.name.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.createdAt.orEmpty() ?? Constants.empty,
        this?.updatedAt.orEmpty() ?? Constants.empty);
  }
}

extension RegisterResponseMapper on RegisterResponse? {
  Register toDomain() {
    return Register(
        this?.dataResponse.toDomain(),
        this?.profileResponse.toDomain(),
        this?.token.orEmpty() ?? Constants.empty);
  }
}

extension ProfileResponseMapper on ProfileViewResponse? {
  ProfilePage toDomain() {
    return ProfilePage(this?.user.toDomain());
  }
}
