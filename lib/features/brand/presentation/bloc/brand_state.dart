part of 'brand_bloc.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState.initial() = _Initial;
  const factory BrandState.loading() = _Loading;
  const factory BrandState.loaded(List<Brand> brands) = _Loaded;
  const factory BrandState.creating() = _Creating;
  const factory BrandState.created(Brand brand) = _Created;
  const factory BrandState.error(String message) = _Error;
}
