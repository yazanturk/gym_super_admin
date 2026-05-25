import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/branch.dart';

abstract class BranchRepository {
  Future<Either<Failure, List<Branch>>> getBranches({String? brandId});
  Future<Either<Failure, Branch>> createBranch({
    required String brandId,
    required String name,
    required String managerEmail,
    required String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  });
  Future<Either<Failure, void>> deleteBranch(String id);
}
