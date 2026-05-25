import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/branch.dart';
import '../repositories/branch_repository.dart';

class CreateBranchParams {
  final String brandId;
  final String name;
  final String managerEmail;
  final String managerPassword;
  final String? address;
  final String? phone;
  final String? logoUrl;

  const CreateBranchParams({
    required this.brandId,
    required this.name,
    required this.managerEmail,
    required this.managerPassword,
    this.address,
    this.phone,
    this.logoUrl,
  });
}

@lazySingleton
class CreateBranchUseCase implements UseCase<Branch, CreateBranchParams> {
  final BranchRepository _repository;
  const CreateBranchUseCase(this._repository);

  @override
  Future<Either<Failure, Branch>> call(CreateBranchParams params) =>
      _repository.createBranch(
        brandId: params.brandId,
        name: params.name,
        managerEmail: params.managerEmail,
        managerPassword: params.managerPassword,
        address: params.address,
        phone: params.phone,
        logoUrl: params.logoUrl,
      );
}
