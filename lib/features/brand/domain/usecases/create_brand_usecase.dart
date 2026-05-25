import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/brand.dart';
import '../repositories/brand_repository.dart';

class CreateBrandParams {
  final String name;
  final String? description;
  final String? logoUrl;
  const CreateBrandParams({required this.name, this.description, this.logoUrl});
}

@lazySingleton
class CreateBrandUseCase implements UseCase<Brand, CreateBrandParams> {
  final BrandRepository _repository;
  const CreateBrandUseCase(this._repository);

  @override
  Future<Either<Failure, Brand>> call(CreateBrandParams params) =>
      _repository.createBrand(
        name: params.name,
        description: params.description,
        logoUrl: params.logoUrl,
      );
}
