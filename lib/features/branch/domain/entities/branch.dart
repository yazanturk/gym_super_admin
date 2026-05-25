import 'package:equatable/equatable.dart';

class Branch extends Equatable {
  final String id;
  final String brandId;
  final String brandName;
  final String name;
  final String? address;
  final String? phone;
  final String? logoUrl;
  final String managerEmail;
  final bool isActive;
  final DateTime createdAt;

  const Branch({
    required this.id,
    required this.brandId,
    required this.brandName,
    required this.name,
    this.address,
    this.phone,
    this.logoUrl,
    required this.managerEmail,
    required this.isActive,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, brandId, name, managerEmail, isActive, createdAt];
}
