import 'package:get_it/get_it.dart';
import '../../features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit());
}
