import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/admin_user.dart';
import '../repositories/auth_repository.dart';

class SignInParams {
  final String email;
  final String password;
  const SignInParams({required this.email, required this.password});
}

@lazySingleton
class SignInUseCase implements UseCase<AdminUser, SignInParams> {
  final AuthRepository _repository;
  const SignInUseCase(this._repository);

  @override
  Future<Either<Failure, AdminUser>> call(SignInParams params) =>
      _repository.signIn(email: params.email, password: params.password);
}
