import 'package:equatable/equatable.dart';

class AdminUser extends Equatable {
  final String id;
  final String email;
  final String role;

  const AdminUser({required this.id, required this.email, required this.role});

  @override
  List<Object> get props => [id, email, role];
}
