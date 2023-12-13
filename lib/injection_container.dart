import 'package:get_it/get_it.dart';
import 'package:haraji/data/data_source/local_data_source.dart';
import 'package:haraji/data/repositor/repo_imp.dart';
import 'package:haraji/domain/repository/message_repository.dart';
import 'package:haraji/domain/usecase/message_usecase.dart';
import 'package:haraji/presentation/cubit/get_message_cubit.dart';

final sl = GetIt.instance;
Future<void>init()async{
  //!cubit
  sl.registerFactory(() => GetMessageCubit(getMessageUseCase: sl()));
  //!usecase
  sl.registerLazySingleton(() => GetMessageUseCase(messageRepository: sl()));
  //!Repositor 
  sl.registerLazySingleton<MessageRepository>(() => MessageRepositoryImpl(localDataSourceImpl: sl()));
  //!Data Source 
  sl.registerLazySingleton<LocatDataSource>(() => LocalDataSourceImpl());
}