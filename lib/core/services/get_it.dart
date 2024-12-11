import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/dio_consumer.dart';
import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/features/reset_password/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());

  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<ApiConsumer>(
    DioConsumer(
      dio: getIt<Dio>(),
    ),
  );

  getIt.registerSingleton<ForgetPasswordCubit>(ForgetPasswordCubit());
}
