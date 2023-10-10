part of 'get_all_portofolios_cubit.dart';

@immutable
abstract class GetAllPortofoliosState {}

class GetAllPortofoliosInitial extends GetAllPortofoliosState {}
class GetAllPortofoliosLoading extends GetAllPortofoliosState {}

class GetAllPortofoliosSuccess extends GetAllPortofoliosState {
  List<PortfolioData?>? listPortfolio;
  ProfileData? profileData;
  GetAllPortofoliosSuccess(this.listPortfolio, this.profileData);
}
class GetAllPortofoliosFailed extends GetAllPortofoliosState {}