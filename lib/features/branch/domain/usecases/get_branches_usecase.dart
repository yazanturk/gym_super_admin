import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/branch.dart';
import '../repositories/branch_repository.dart';

class GetBranchesParams {
  final String? brandId;
  const GetBranchesParams({this.brandId});
}

@lazySingleton
class GetBranchesUseCase implements UseCase<List<Branch>, GetBranchesParams> {
  final BranchRepository _repository;
  const GetBranchesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Branch>>> call(GetBranchesParams params) =>
      _repository.getBranches(brandId: params.brandId);
}
