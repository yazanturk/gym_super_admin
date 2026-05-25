part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.loadBrands() = _LoadBrands;
  const factory BrandEvent.createBrand({
    required String name,
    String? description,
    String? logoUrl,
  }) = _CreateBrand;
  const factory BrandEvent.deleteBrand(String id) = _DeleteBrand;
}
