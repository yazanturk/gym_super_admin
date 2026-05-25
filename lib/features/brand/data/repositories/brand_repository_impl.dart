import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/brand.dart';
import '../../domain/repositories/brand_repository.dart';
import '../datasources/brand_remote_datasource.dart';
import '../models/brand_model.dart';

@LazySingleton(as: BrandRepository)
class BrandRepositoryImpl implements BrandRepository {
  final BrandRemoteDataSource _dataSource;
  const BrandRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Brand>>> getBrands() async {
    try {
      final brands = await _dataSource.getBrands();
      return Right(brands);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Brand>> createBrand({
    required String name,
    String? description,
    String? logoUrl,
  }) async {
    try {
      final brand = await _dataSource.createBrand(
        name: name,
        description: description,
        logoUrl: logoUrl,
      );
      return Right(brand);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Brand>> updateBrand(Brand brand) async {
    try {
      final model = BrandModel.fromEntity(brand);
      final updated = await _dataSource.updateBrand(model);
      return Right(updated);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteBrand(String id) async {
    try {
      await _dataSource.deleteBrand(id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
