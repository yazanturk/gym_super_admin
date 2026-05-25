// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => BranchModel(
  id: json['id'] as String,
  brandId: json['brand_id'] as String,
  brandName: json['brand_name'] as String,
  name: json['name'] as String,
  address: json['address'] as String?,
  phone: json['phone'] as String?,
  logoUrl: json['logo_url'] as String?,
  managerEmail: json['manager_email'] as String,
  isActive: json['is_active'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$BranchModelToJson(BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_id': instance.brandId,
      'brand_name': instance.brandName,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'logo_url': instance.logoUrl,
      'manager_email': instance.managerEmail,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
    };
