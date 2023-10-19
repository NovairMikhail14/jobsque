import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:jobsque/app/app_pref.dart';
import 'package:jobsque/data/network/network_info.dart';
import 'package:jobsque/domain/usecase/apply_usecase/showApply_usecase.dart';
import 'package:jobsque/domain/usecase/auth_usecase/register_usecase.dart';
import 'package:jobsque/presentation/pages_auth/create_account/register_cubit/register_cubit.dart';
import 'package:jobsque/presentation/pages_auth/forget_password/cubit/forget_password_cubit.dart';
import 'package:jobsque/presentation/pages_home_jobs/cubit/searchJob_cubit/search_job_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/data_source/remote_data_source.dart';
import '../data/network/app_api.dart';
import '../data/network/dio_factory.dart';
import '../data/repository/repository_impl.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/auth_usecase/forget_password_usecase.dart';
import '../domain/usecase/auth_usecase/login_usecase.dart';
import '../domain/usecase/chats_usecase/allChats_usecase.dart';
import '../domain/usecase/chats_usecase/userSendMessage_usecase.dart';
import '../domain/usecase/company_usecase/getAllCompany_usecase.dart';
import '../domain/usecase/favorites_usecase/addFavorite_usecase.dart';
import '../domain/usecase/favorites_usecase/deleteFavorite_usecase.dart';
import '../domain/usecase/favorites_usecase/showAllFavorite_usecase.dart';
import '../domain/usecase/job_usecase/getAllJob_usecase.dart';
import '../domain/usecase/job_usecase/jobID_usecase.dart';
import '../domain/usecase/job_usecase/searchJob_usecase.dart';
import '../domain/usecase/profile_usecase/addPortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/deletePortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/editAllPortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/getAllPortofolios_usecase.dart';
import '../presentation/0cubit/apply_usecase/showApply_cubit/show_apply_cubit.dart';
import '../presentation/pages_auth/login/cubit/login_cubit.dart';
import '../presentation/pages_chats/chats_usecase/allChats_cubit/all_chats_cubit.dart';
import '../presentation/pages_chats/chats_usecase/getAllCompany_cubit/get_all_company_cubit.dart';
import '../presentation/pages_chats/chats_usecase/userSendMessage_cubit/user_send_message_cubit.dart';
import '../presentation/pages_home_jobs/cubit/addFavorite_cubit/add_favorite_cubit.dart';
import '../presentation/pages_home_jobs/cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../presentation/pages_home_jobs/cubit/jobID_cubit/job_id_cubit.dart';
import '../presentation/pages_profile/cubit/addPortofolio_cubit/add_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/deletePortofolio_cubit/delete_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/editAllPortofolio_cubit/edit_all_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/getAllPortofolios_cubit/get_all_portofolios_cubit.dart';
import '../presentation/save_job/cubit/deleteFavorite_cubit/delete_favorite_cubit.dart';
import '../presentation/save_job/cubit/showAllFavorite_cubit/show_all_favorite_cubit.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async{
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance<SharedPreferences>()));
  instance.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImp(instance()));
  instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance(),instance()));
  instance.registerLazySingleton<GetAllJobUseCase>(() => GetAllJobUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetAllJobCubit>(() => GetAllJobCubit(instance<GetAllJobUseCase>()));
  instance.registerLazySingleton<GetAllCompanyUseCase>(() => GetAllCompanyUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetAllCompanyCubit>(() => GetAllCompanyCubit(instance<GetAllCompanyUseCase>()));
  instance.registerLazySingleton<JobIDUseCase>(() => JobIDUseCase(instance<Repository>()));
  instance.registerLazySingleton<JobIdCubit>(() => JobIdCubit(instance<JobIDUseCase>()));
  instance.registerLazySingleton<SearchJobUseCase>(() => SearchJobUseCase(instance<Repository>()));
  instance.registerLazySingleton<SearchJobCubit>(() => SearchJobCubit(instance<SearchJobUseCase>()));
  instance.registerLazySingleton<GetAllPortofolioseUseCase>(() => GetAllPortofolioseUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetAllPortofoliosCubit>(() => GetAllPortofoliosCubit(instance<GetAllPortofolioseUseCase>()));
  instance.registerLazySingleton<AddPortofolioUseCase>(() => AddPortofolioUseCase(instance<Repository>()));
  instance.registerLazySingleton<AddPortofolioCubit>(() => AddPortofolioCubit(instance<AddPortofolioUseCase>()));
  instance.registerLazySingleton<DeletePortofoliosUseCase>(() => DeletePortofoliosUseCase(instance<Repository>()));
  instance.registerLazySingleton<DeletePortofolioCubit>(() => DeletePortofolioCubit(instance<DeletePortofoliosUseCase>()));
  instance.registerLazySingleton<EditPortfolioUseCase>(() => EditPortfolioUseCase(instance<Repository>()));
  instance.registerLazySingleton<EditAllPortofolioCubit>(() => EditAllPortofolioCubit(instance<EditPortfolioUseCase>()));
  instance.registerLazySingleton<ShowApplyUseCase>(() => ShowApplyUseCase(instance<Repository>()));
  instance.registerLazySingleton<ShowApplyCubit>(() => ShowApplyCubit(instance<ShowApplyUseCase>()));
  instance.registerLazySingleton<AddFavoriteUseCase>(() => AddFavoriteUseCase(instance<Repository>()));
  instance.registerLazySingleton<AddFavoriteCubit>(() => AddFavoriteCubit(instance<AddFavoriteUseCase>()));
  instance.registerLazySingleton<DeleteFavoriteUseCase>(() => DeleteFavoriteUseCase(instance<Repository>()));
  instance.registerLazySingleton<DeleteFavoriteCubit>(() => DeleteFavoriteCubit(instance<DeleteFavoriteUseCase>()));
  instance.registerLazySingleton<ShowAllFavoriteUseCase>(() => ShowAllFavoriteUseCase(instance<Repository>()));
  instance.registerLazySingleton<ShowAllFavoriteCubit>(() => ShowAllFavoriteCubit(instance<ShowAllFavoriteUseCase>()));

  instance.registerLazySingleton<UserSendMessageUseCase>(() => UserSendMessageUseCase(instance<Repository>()));
  instance.registerLazySingleton<UserSendMessageCubit>(() => UserSendMessageCubit(instance<UserSendMessageUseCase>()));
  instance.registerLazySingleton<AllChatUseCase>(() => AllChatUseCase(instance<Repository>()));
  instance.registerLazySingleton<AllChatsCubit>(() => AllChatsCubit(instance<AllChatUseCase>()));
  instance.registerLazySingleton<ForgetBPasswordUseCase>(() => ForgetBPasswordUseCase(instance()));
  instance.registerLazySingleton<ForgetPasswordCubit>(() => ForgetPasswordCubit(instance<ForgetBPasswordUseCase>()));

}

initLoginModule(){
  if(!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    instance.registerFactory<LoginCubit>(() => LoginCubit(instance()));

  }
  if(!GetIt.I.isRegistered<RegisterUseCase>()) {
    instance.registerFactory<RegisterUseCase>(() => RegisterUseCase(instance()));
    instance.registerFactory<RegisterCubit>(() => RegisterCubit(instance()));
  }
  // if(!GetIt.I.isRegistered<GetAllJobUseCase>()) {
  // instance.registerFactory<GetAllJobUseCase>(() => GetAllJobUseCase(instance()));
  // instance.registerFactory<GetAllJobCubit>(() => GetAllJobCubit(instance()));
  // }
}
