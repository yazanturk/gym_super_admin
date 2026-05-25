import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/brand.dart';
import '../repositories/brand_repository.dart';

@lazySingleton
class GetBrandsUseCase implements UseCase<List<Brand>, NoParams> {
  final BrandRepository _repository;
  const GetBrandsUseCase(this._repository);

  @override
  Future<Either<Failure, List<Brand>>> call(NoParams params) =>
      _repository.getBrands();
}
