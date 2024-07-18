// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart' as _i9;
import 'package:drop_check/app/home/pages/cubit/news_cubit.dart' as _i10;
import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart' as _i11;
import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart'
    as _i3;
import 'package:drop_check/data/remote_data_sources/news_remote_data_source.dart'
    as _i5;
import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart'
    as _i7;
import 'package:drop_check/repositories/drop_repository.dart' as _i4;
import 'package:drop_check/repositories/news_repository.dart' as _i6;
import 'package:drop_check/repositories/sale_repository.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DropRemoteDataSource>(() => _i3.DropRemoteDataSource());
    gh.factory<_i4.DropRepository>(
        () => _i4.DropRepository(dataSource: gh<_i3.DropRemoteDataSource>()));
    gh.factory<_i5.NewsRemoteDataSource>(() => _i5.NewsRemoteDataSource());
    gh.factory<_i6.NewsRepository>(
        () => _i6.NewsRepository(dataSource: gh<_i5.NewsRemoteDataSource>()));
    gh.factory<_i7.SaleRemoteDataSource>(() => _i7.SaleRemoteDataSource());
    gh.factory<_i8.SaleRepository>(
        () => _i8.SaleRepository(dataSource: gh<_i7.SaleRemoteDataSource>()));
    gh.factory<_i9.DropCubit>(
        () => _i9.DropCubit(dropRepository: gh<_i4.DropRepository>()));
    gh.factory<_i10.NewsCubit>(
        () => _i10.NewsCubit(newsRepository: gh<_i6.NewsRepository>()));
    gh.factory<_i11.SaleCubit>(
        () => _i11.SaleCubit(saleRepository: gh<_i8.SaleRepository>()));
    return this;
  }
}
