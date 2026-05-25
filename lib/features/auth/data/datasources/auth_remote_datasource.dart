import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/exceptions.dart';
import '../models/admin_user_model.dart';

abstract class AuthRemoteDataSource {
  Future<AdminUserModel> signIn({required String email, required String password});
  Future<void> signOut();
  AdminUserModel? get currentUser;
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient _client;
  const AuthRemoteDataSourceImpl(this._client);

  @override
  Future<AdminUserModel> signIn({required String email, required String password}) async {
    try {
      final response = await _client.auth.signInWithPassword(email: email, password: password);

      final user = response.user;
      if (user == null) throw const AppAuthException('Sign in failed');

      return AdminUserModel(
        id: user.id,
        email: user.email ?? email,
        role: 'super_admin',
      );
    } on AppAuthException {
      rethrow;
    } catch (e) {
      log('Error during sign in: $e');
      throw AppAuthException(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _client.auth.signOut();
    } catch (e) {
      throw AppAuthException(e.toString());
    }
  }

  @override
  AdminUserModel? get currentUser {
    final user = _client.auth.currentUser;
    if (user == null) return null;
    return AdminUserModel(id: user.id, email: user.email ?? '', role: 'super_admin');
  }
}
