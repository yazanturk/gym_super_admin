import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/brand.dart';

part 'brand_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BrandModel extends Brand {
  const BrandModel({
    required super.id,
    required super.name,
    super.logoUrl,
    super.description,
    required super.isActive,
    required super.createdAt,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);

  Map<String, dynamic> toJson() => _$BrandModelToJson(this);

  factory BrandModel.fromEntity(Brand entity) => BrandModel(
        id: entity.id,
        name: entity.name,
        logoUrl: entity.logoUrl,
        description: entity.description,
        isActive: entity.isActive,
        createdAt: entity.createdAt,
      );
}
