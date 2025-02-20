import 'package:get_it/get_it.dart';
import 'package:practical_google_maps_example/core/utils/storage_helper.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() {
  //Storage Helper

  sl.registerLazySingleton(() => StorageHelper());

  // Repos
  // sl.registerLazySingleton(() => AuthRepo(sl<DioHelper>()));
  // sl.registerLazySingleton(() => HomeRepo(sl<DioHelper>()));
  // sl.registerLazySingleton(() => CartRepo(sl<DioHelper>()));

  // Cubit
  // sl.registerFactory(() => AuthCubit(sl<AuthRepo>()));
  // sl.registerFactory(() => ProductCubit(sl<HomeRepo>()));
  // sl.registerFactory(() => CategoriesCubit(sl<HomeRepo>()));
  // sl.registerFactory(() => CartCubit(sl<CartRepo>()));
}
