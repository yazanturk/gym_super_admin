import 'package:equatable/equatable.dart';

class Brand extends Equatable {
  final String id;
  final String name;
  final String? logoUrl;
  final String? description;
  final bool isActive;
  final DateTime createdAt;

  const Brand({
    required this.id,
    required this.name,
    this.logoUrl,
    this.description,
    required this.isActive,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, name, logoUrl, description, isActive, createdAt];
}
