import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:jobsque/app/app_pref.dart';
import 'package:jobsque/data/network/network_info.dart';
import 'package:jobsque/domain/usecase/auth_usecase/register_usecase.dart';
import 'package:jobsque/presentation/pages_auth/create_account/register_cubit/register_cubit.dart';
import 'package:jobsque/presentation/pages_home_jobs/cubit/searchJob_cubit/search_job_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/data_source/remote_data_source.dart';
import '../data/network/app_api.dart';
import '../data/network/dio_factory.dart';
import '../data/repository/repository_impl.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/auth_usecase/forget_password_usecase.dart';
import '../domain/usecase/auth_usecase/login_usecase.dart';
import '../domain/usecase/company_usecase/getAllCompany_usecase.dart';
import '../domain/usecase/job_usecase/getAllJob_usecase.dart';
import '../domain/usecase/job_usecase/jobID_usecase.dart';
import '../domain/usecase/job_usecase/searchJob_usecase.dart';
import '../domain/usecase/profile_usecase/addPortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/deletePortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/editAllPortofolio_usecase.dart';
import '../domain/usecase/profile_usecase/getAllPortofolios_usecase.dart';
import '../presentation/0cubit/company_usecase/getAllCompany_cubit/get_all_company_cubit.dart';
import '../presentation/pages_auth/login/cubit/login_cubit.dart';
import '../presentation/pages_home_jobs/cubit/getAllJob_cubit/get_all_job_cubit.dart';
import '../presentation/pages_home_jobs/cubit/jobID_cubit/job_id_cubit.dart';
import '../presentation/pages_profile/cubit/addPortofolio_cubit/add_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/deletePortofolio_cubit/delete_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/editAllPortofolio_cubit/edit_all_portofolio_cubit.dart';
import '../presentation/pages_profile/cubit/getAllPortofolios_cubit/get_all_portofolios_cubit.dart';

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
}

initLoginModule(){
  if(!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    instance.registerFactory<LoginCubit>(() => LoginCubit(instance()));
    instance.registerFactory<ForgetBPasswordUseCase>(() => ForgetBPasswordUseCase(instance()));
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
