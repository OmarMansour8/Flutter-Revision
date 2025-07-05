import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recap_project/core/networking/api_service.dart';
import 'package:recap_project/core/networking/dio_factory.dart';
import 'package:recap_project/features/login/data/repo/login_repo.dart';
import 'package:recap_project/features/login/logic/cubit/cubit/login_cubit.dart';
import 'package:recap_project/features/sign_up/data/repo/signup_repo.dart';
import 'package:recap_project/features/sign_up/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
