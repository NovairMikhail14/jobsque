import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import '../../domain/model/company_model.dart';
import '../responses/company_response/company_response.dart';

extension CompanyResponseMapper on CompanyResponse? {
  Company toDomain() {
    return Company(
      this?.id.orZero() ?? Constants.zero,
      this?.name.orEmpty() ?? Constants.empty,
      this?.image.orEmpty() ?? Constants.empty,
      this?.email.orEmpty() ?? Constants.empty,
      this?.website.orEmpty() ?? Constants.empty,
      this?.about.orEmpty() ?? Constants.empty,
      this?.location.orEmpty() ?? Constants.empty,
      this?.createdAt.orEmpty() ?? Constants.empty,
      this?.updatedAt.orEmpty() ?? Constants.empty,
    );
  }
}

extension NonNulllist on List<CompanyResponse>? {
  List<Company> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension GetAllCompanyResponseMapper on GetAllCompanyResponse? {
  GetAllCompany toDomain() {
    return GetAllCompany(this?.companyListResponce.toDomain()??[]);
  }
}
