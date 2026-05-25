import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class SignOutUseCase implements UseCase<void, NoParams> {
  final AuthRepository _repository;
  const SignOutUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) => _repository.signOut();
}
