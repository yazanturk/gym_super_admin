import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/admin_user.dart';

part 'admin_user_model.g.dart';

@JsonSerializable()
class AdminUserModel extends AdminUser {
  const AdminUserModel({
    required super.id,
    required super.email,
    required super.role,
  });

  factory AdminUserModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUserModelToJson(this);

  factory AdminUserModel.fromEntity(AdminUser entity) => AdminUserModel(
        id: entity.id,
        email: entity.email,
        role: entity.role,
      );
}
