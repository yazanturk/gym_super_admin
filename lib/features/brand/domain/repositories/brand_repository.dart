import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/brand.dart';

abstract class BrandRepository {
  Future<Either<Failure, List<Brand>>> getBrands();
  Future<Either<Failure, Brand>> createBrand({
    required String name,
    String? description,
    String? logoUrl,
  });
  Future<Either<Failure, Brand>> updateBrand(Brand brand);
  Future<Either<Failure, void>> deleteBrand(String id);
}
