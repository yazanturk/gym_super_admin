// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:gym_super_admin/core/network/supabase_client.dart' as _i669;
import 'package:gym_super_admin/core/router/app_router.dart' as _i790;
import 'package:gym_super_admin/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i550;
import 'package:gym_super_admin/features/auth/data/repositories/auth_repository_impl.dart'
    as _i1052;
import 'package:gym_super_admin/features/auth/domain/repositories/auth_repository.dart'
    as _i1044;
import 'package:gym_super_admin/features/auth/domain/usecases/sign_in_usecase.dart'
    as _i763;
import 'package:gym_super_admin/features/auth/domain/usecases/sign_out_usecase.dart'
    as _i860;
import 'package:gym_super_admin/features/auth/presentation/bloc/auth_bloc.dart'
    as _i932;
import 'package:gym_super_admin/features/branch/data/datasources/branch_remote_datasource.dart'
    as _i690;
import 'package:gym_super_admin/features/branch/data/repositories/branch_repository_impl.dart'
    as _i900;
import 'package:gym_super_admin/features/branch/domain/repositories/branch_repository.dart'
    as _i978;
import 'package:gym_super_admin/features/branch/domain/usecases/create_branch_usecase.dart'
    as _i902;
import 'package:gym_super_admin/features/branch/domain/usecases/get_branches_usecase.dart'
    as _i711;
import 'package:gym_super_admin/features/branch/presentation/bloc/branch_bloc.dart'
    as _i573;
import 'package:gym_super_admin/features/brand/data/datasources/brand_remote_datasource.dart'
    as _i730;
import 'package:gym_super_admin/features/brand/data/repositories/brand_repository_impl.dart'
    as _i111;
import 'package:gym_super_admin/features/brand/domain/repositories/brand_repository.dart'
    as _i1004;
import 'package:gym_super_admin/features/brand/domain/usecases/create_brand_usecase.dart'
    as _i373;
import 'package:gym_super_admin/features/brand/domain/usecases/get_brands_usecase.dart'
    as _i443;
import 'package:gym_super_admin/features/brand/presentation/bloc/brand_bloc.dart'
    as _i271;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final supabaseModule = _$SupabaseModule();
    gh.lazySingleton<_i454.SupabaseClient>(() => supabaseModule.supabaseClient);
    gh.lazySingleton<_i790.AppRouter>(() => _i790.AppRouter());
    gh.lazySingleton<_i690.BranchRemoteDataSource>(
      () => _i690.BranchRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i978.BranchRepository>(
      () => _i900.BranchRepositoryImpl(gh<_i690.BranchRemoteDataSource>()),
    );
    gh.lazySingleton<_i550.AuthRemoteDataSource>(
      () => _i550.AuthRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i730.BrandRemoteDataSource>(
      () => _i730.BrandRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i1004.BrandRepository>(
      () => _i111.BrandRepositoryImpl(gh<_i730.BrandRemoteDataSource>()),
    );
    gh.lazySingleton<_i711.GetBranchesUseCase>(
      () => _i711.GetBranchesUseCase(gh<_i978.BranchRepository>()),
    );
    gh.lazySingleton<_i902.CreateBranchUseCase>(
      () => _i902.CreateBranchUseCase(gh<_i978.BranchRepository>()),
    );
    gh.lazySingleton<_i1044.AuthRepository>(
      () => _i1052.AuthRepositoryImpl(gh<_i550.AuthRemoteDataSource>()),
    );
    gh.lazySingleton<_i373.CreateBrandUseCase>(
      () => _i373.CreateBrandUseCase(gh<_i1004.BrandRepository>()),
    );
    gh.lazySingleton<_i443.GetBrandsUseCase>(
      () => _i443.GetBrandsUseCase(gh<_i1004.BrandRepository>()),
    );
    gh.factory<_i573.BranchBloc>(
      () => _i573.BranchBloc(
        gh<_i711.GetBranchesUseCase>(),
        gh<_i902.CreateBranchUseCase>(),
      ),
    );
    gh.lazySingleton<_i763.SignInUseCase>(
      () => _i763.SignInUseCase(gh<_i1044.AuthRepository>()),
    );
    gh.lazySingleton<_i860.SignOutUseCase>(
      () => _i860.SignOutUseCase(gh<_i1044.AuthRepository>()),
    );
    gh.factory<_i271.BrandBloc>(
      () => _i271.BrandBloc(
        gh<_i443.GetBrandsUseCase>(),
        gh<_i373.CreateBrandUseCase>(),
      ),
    );
    gh.factory<_i932.AuthBloc>(
      () =>
          _i932.AuthBloc(gh<_i763.SignInUseCase>(), gh<_i860.SignOutUseCase>()),
    );
    return this;
  }
}

class _$SupabaseModule extends _i669.SupabaseModule {}
