import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:jolly_cast/features/auth/data/datasources/local/last_login_time_datasource.dart';
import 'package:jolly_cast/features/auth/domain/usecases/delete_last_login_time.dart';
import 'package:jolly_cast/features/auth/domain/usecases/delete_token.dart';
import 'package:jolly_cast/features/discover/data/datasources/editors_pick_datasource.dart';
import 'package:jolly_cast/features/discover/data/datasources/trending_episodes_datasource.dart';
import 'package:jolly_cast/features/discover/domain/repositories/trending_episodes_repository.dart';
import 'package:jolly_cast/features/discover/domain/usecases/get_trending_episodes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasources/local/subscription_datasource.dart';
import '../../features/auth/data/datasources/local/token_datasource.dart';
import '../../features/auth/data/datasources/local/user_datasource.dart';
import '../../features/auth/data/datasources/remote/login_datasource.dart';
import '../../features/auth/data/repositories/last_login_time_repository_impl.dart';
import '../../features/auth/data/repositories/login_repository_impl.dart';
import '../../features/auth/data/repositories/subscription_repository_impl.dart';
import '../../features/auth/data/repositories/token_repository_impl.dart';
import '../../features/auth/data/repositories/user_repository_impl.dart';
import '../../features/auth/domain/repositories/last_login_time_repository.dart';
import '../../features/auth/domain/repositories/login_repository.dart';
import '../../features/auth/domain/repositories/subscription_repository.dart';
import '../../features/auth/domain/repositories/token_repository.dart';
import '../../features/auth/domain/repositories/user_repository.dart';
import '../../features/auth/domain/usecases/get_user.dart';
import '../../features/auth/domain/usecases/login.dart';
import '../../features/auth/domain/usecases/save_last_login_time.dart';
import '../../features/auth/domain/usecases/save_subscription.dart';
import '../../features/auth/domain/usecases/save_token.dart';
import '../../features/auth/domain/usecases/save_user.dart';
import '../../features/auth/presentation/view_model/login_view_model.dart';
import '../../features/discover/data/repositories/editors_pick_repository_impl.dart';
import '../../features/discover/data/repositories/trending_episodes_repository_impl.dart';
import '../../features/discover/domain/repositories/editors_pick_repository.dart';
import '../../features/discover/domain/usecases/get_editors_pick.dart';
import '../../features/discover/presentation/view_model/discover_view_model.dart';
import '../../features/podcast_player/presentation/view_model/jolly_podcast_player_view_model.dart';
import '../../features/root/presentation/view_model/root_view_model.dart';
import '../../features/splash/presentation/view_model/splash_view_model.dart';
import '../local_storage/local_storage_client.dart';
import '../networking/dio_client.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // =============================== CORE DEPENDENCIES ================================
  getIt.registerLazySingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  getIt.registerLazySingleton<FlutterSecureStorage>(() => const FlutterSecureStorage());
  // ================================ SERVICES ================================
  getIt.registerLazySingleton<DioClient>(() => DioClient());
  getIt.registerSingletonAsync<LocalStorageClient>(() async {
    final prefs = await getIt.getAsync<SharedPreferences>();
    return LocalStorageClient(sharedPreferences: prefs, secureStorage: getIt<FlutterSecureStorage>());
  });
  await getIt.getAsync<LocalStorageClient>();
  // ================================ DATA SOURCES ================================
  getIt.registerLazySingleton<LoginDatasource>(() => LoginDatasource(getIt<DioClient>()));
  getIt.registerLazySingleton<TokenDatasource>(() => TokenDatasource(getIt<LocalStorageClient>()));
  getIt.registerLazySingleton<UserDatasource>(() => UserDatasource(getIt<LocalStorageClient>()));
  getIt.registerLazySingleton<SubscriptionDatasource>(() => SubscriptionDatasource(getIt<LocalStorageClient>()));
  getIt.registerLazySingleton<LastLoginTimeDatasource>(() => LastLoginTimeDatasource(getIt<LocalStorageClient>()));
  getIt.registerLazySingleton<EditorsPickDatasource>(() => EditorsPickDatasource(getIt<DioClient>()));
  getIt.registerLazySingleton<TrendingEpisodesDatasource>(() => TrendingEpisodesDatasource(getIt<DioClient>()));
  // ================================ REPOSITORIES ================================
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(getIt<LoginDatasource>()));
  getIt.registerLazySingleton<TokenRepository>(() => TokenRepositoryImpl(getIt<TokenDatasource>()));
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(getIt<UserDatasource>()));
  getIt.registerLazySingleton<SubscriptionRepository>(() => SubscriptionRepositoryImpl(getIt<SubscriptionDatasource>()));
  getIt.registerLazySingleton<LastLoginTimeRepository>(() => LastLoginTimeRepositoryImpl(getIt<LastLoginTimeDatasource>()));
  getIt.registerLazySingleton<EditorsPickRepository>(() => EditorsPickRepositoryImpl(getIt<EditorsPickDatasource>()));
  getIt.registerLazySingleton<TrendingEpisodesRepository>(() => TrendingEpisodesRepositoryImpl(getIt<TrendingEpisodesDatasource>()));
  // ================================ USE CASES ================================
  getIt.registerLazySingleton<Login>(() => Login(getIt<LoginRepository>()));
  getIt.registerLazySingleton<GetUser>(() => GetUser(getIt<UserRepository>()));
  getIt.registerLazySingleton<SaveToken>(() => SaveToken(getIt<TokenRepository>()));
  getIt.registerLazySingleton<SaveUser>(() => SaveUser(getIt<UserRepository>()));
  getIt.registerLazySingleton<SaveSubscription>(() => SaveSubscription(getIt<SubscriptionRepository>()));
  getIt.registerLazySingleton<SaveLastLoginTime>(() => SaveLastLoginTime(getIt<LastLoginTimeRepository>()));
  getIt.registerLazySingleton<GetEditorsPick>(() => GetEditorsPick(getIt<EditorsPickRepository>()));
  getIt.registerLazySingleton<DeleteToken>(() => DeleteToken(getIt<TokenRepository>()));
  getIt.registerLazySingleton<DeleteLastLoginTime>(() => DeleteLastLoginTime(getIt<LastLoginTimeRepository>()));
  getIt.registerLazySingleton<GetTrendingEpisodes>(() => GetTrendingEpisodes(getIt<TrendingEpisodesRepository>()));
  // ================================ VIEW MODELS ================================
  getIt.registerFactory<SplashViewModel>(() => SplashViewModel());
  getIt.registerFactory<LoginViewModel>(
    () => LoginViewModel(
      getIt<Login>(),
      getIt<GetUser>(),
      getIt<SaveLastLoginTime>(),
      getIt<SaveToken>(),
      getIt<SaveUser>(),
      getIt<SaveSubscription>(),
    ),
  );
  getIt.registerLazySingleton<RootViewModel>(() => RootViewModel());
  getIt.registerLazySingleton<DiscoverViewModel>(() => DiscoverViewModel(getIt<GetEditorsPick>(), getIt<GetTrendingEpisodes>()));
  getIt.registerLazySingleton<JollyPodcastPlayerViewModel>(() => JollyPodcastPlayerViewModel());

  await getIt.allReady();
}
