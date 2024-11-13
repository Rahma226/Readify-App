import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:readify/core/utils/api_service.dart';
import 'package:readify/features/home/data/repos/home_repo_implementation.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      ApiService(
        Dio(),
      ),
    ),
  );
}
