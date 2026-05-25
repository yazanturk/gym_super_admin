import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/branch.dart';

part 'branch_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BranchModel extends Branch {
  const BranchModel({
    required super.id,
    required super.brandId,
    required super.brandName,
    required super.name,
    super.address,
    super.phone,
    super.logoUrl,
    required super.managerEmail,
    required super.isActive,
    required super.createdAt,
  });

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);

  Map<String, dynamic> toJson() => _$BranchModelToJson(this);

  factory BranchModel.fromEntity(Branch entity) => BranchModel(
        id: entity.id,
        brandId: entity.brandId,
        brandName: entity.brandName,
        name: entity.name,
        address: entity.address,
        phone: entity.phone,
        managerEmail: entity.managerEmail,
        isActive: entity.isActive,
        createdAt: entity.createdAt,
      );
}
