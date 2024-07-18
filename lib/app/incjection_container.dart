import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart';
import 'package:drop_check/app/home/pages/cubit/news_cubit.dart';
import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart';
import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart';
import 'package:drop_check/data/remote_data_sources/news_remote_data_source.dart';
import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:drop_check/repositories/news_repository.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Bloc
  getIt.registerFactory(() => DropCubit(dropRepository: getIt()));
  getIt.registerFactory(() => NewsCubit(newsRepository: getIt()));
  getIt.registerFactory(() => SaleCubit(saleRepository: getIt()));

  // Repositories
  getIt.registerFactory(() => DropRepository(dataSource: getIt()));
  getIt.registerFactory(() => NewsRepository(dataSource: getIt()));
  getIt.registerFactory(() => SaleRepository(dataSource: getIt()));

  // DataSources
  getIt.registerFactory(() => DropRemoteDataSource());
  getIt.registerFactory(() => NewsRemoteDataSource());
  getIt.registerFactory(() => SaleRemoteDataSource());
}
