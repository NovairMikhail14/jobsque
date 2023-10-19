part of 'get_all_company_cubit.dart';

@immutable
abstract class GetAllCompanyState {}

class GetAllCompanyInitial extends GetAllCompanyState {}
class GetAllCompanyFailed extends GetAllCompanyState {}
class GetAllCompanySuccess extends GetAllCompanyState {
  List<Company> listCompany;
  GetAllCompanySuccess(this.listCompany);
}
