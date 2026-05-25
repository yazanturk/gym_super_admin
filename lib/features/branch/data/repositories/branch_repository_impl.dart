import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/branch.dart';
import '../../domain/repositories/branch_repository.dart';
import '../datasources/branch_remote_datasource.dart';

@LazySingleton(as: BranchRepository)
class BranchRepositoryImpl implements BranchRepository {
  final BranchRemoteDataSource _dataSource;
  const BranchRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Branch>>> getBranches({String? brandId}) async {
    try {
      final branches = await _dataSource.getBranches(brandId: brandId);
      return Right(branches);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Branch>> createBranch({
    required String brandId,
    required String name,
    required String managerEmail,
    required String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  }) async {
    try {
      final branch = await _dataSource.createBranch(
        brandId: brandId,
        name: name,
        managerEmail: managerEmail,
        managerPassword: managerPassword,
        address: address,
        phone: phone,
        logoUrl: logoUrl,
      );
      return Right(branch);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteBranch(String id) async {
    try {
      await _dataSource.deleteBranch(id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
