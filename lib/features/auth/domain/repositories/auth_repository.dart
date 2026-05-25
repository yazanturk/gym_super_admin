import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/admin_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, AdminUser>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signOut();

  AdminUser? get currentUser;
}
