// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BrandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBrands,
    required TResult Function(String name, String? description, String? logoUrl)
    createBrand,
    required TResult Function(String id) deleteBrand,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBrands,
    TResult? Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult? Function(String id)? deleteBrand,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBrands,
    TResult Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult Function(String id)? deleteBrand,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBrands value) loadBrands,
    required TResult Function(_CreateBrand value) createBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBrands value)? loadBrands,
    TResult? Function(_CreateBrand value)? createBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBrands value)? loadBrands,
    TResult Function(_CreateBrand value)? createBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandEventCopyWith<$Res> {
  factory $BrandEventCopyWith(
    BrandEvent value,
    $Res Function(BrandEvent) then,
  ) = _$BrandEventCopyWithImpl<$Res, BrandEvent>;
}

/// @nodoc
class _$BrandEventCopyWithImpl<$Res, $Val extends BrandEvent>
    implements $BrandEventCopyWith<$Res> {
  _$BrandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadBrandsImplCopyWith<$Res> {
  factory _$$LoadBrandsImplCopyWith(
    _$LoadBrandsImpl value,
    $Res Function(_$LoadBrandsImpl) then,
  ) = __$$LoadBrandsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBrandsImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$LoadBrandsImpl>
    implements _$$LoadBrandsImplCopyWith<$Res> {
  __$$LoadBrandsImplCopyWithImpl(
    _$LoadBrandsImpl _value,
    $Res Function(_$LoadBrandsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadBrandsImpl implements _LoadBrands {
  const _$LoadBrandsImpl();

  @override
  String toString() {
    return 'BrandEvent.loadBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBrandsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBrands,
    required TResult Function(String name, String? description, String? logoUrl)
    createBrand,
    required TResult Function(String id) deleteBrand,
  }) {
    return loadBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBrands,
    TResult? Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult? Function(String id)? deleteBrand,
  }) {
    return loadBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBrands,
    TResult Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult Function(String id)? deleteBrand,
    required TResult orElse(),
  }) {
    if (loadBrands != null) {
      return loadBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBrands value) loadBrands,
    required TResult Function(_CreateBrand value) createBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
  }) {
    return loadBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBrands value)? loadBrands,
    TResult? Function(_CreateBrand value)? createBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
  }) {
    return loadBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBrands value)? loadBrands,
    TResult Function(_CreateBrand value)? createBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    required TResult orElse(),
  }) {
    if (loadBrands != null) {
      return loadBrands(this);
    }
    return orElse();
  }
}

abstract class _LoadBrands implements BrandEvent {
  const factory _LoadBrands() = _$LoadBrandsImpl;
}

/// @nodoc
abstract class _$$CreateBrandImplCopyWith<$Res> {
  factory _$$CreateBrandImplCopyWith(
    _$CreateBrandImpl value,
    $Res Function(_$CreateBrandImpl) then,
  ) = __$$CreateBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String? description, String? logoUrl});
}

/// @nodoc
class __$$CreateBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$CreateBrandImpl>
    implements _$$CreateBrandImplCopyWith<$Res> {
  __$$CreateBrandImplCopyWithImpl(
    _$CreateBrandImpl _value,
    $Res Function(_$CreateBrandImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(
      _$CreateBrandImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        logoUrl: freezed == logoUrl
            ? _value.logoUrl
            : logoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CreateBrandImpl implements _CreateBrand {
  const _$CreateBrandImpl({required this.name, this.description, this.logoUrl});

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? logoUrl;

  @override
  String toString() {
    return 'BrandEvent.createBrand(name: $name, description: $description, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBrandImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, logoUrl);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBrandImplCopyWith<_$CreateBrandImpl> get copyWith =>
      __$$CreateBrandImplCopyWithImpl<_$CreateBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBrands,
    required TResult Function(String name, String? description, String? logoUrl)
    createBrand,
    required TResult Function(String id) deleteBrand,
  }) {
    return createBrand(name, description, logoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBrands,
    TResult? Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult? Function(String id)? deleteBrand,
  }) {
    return createBrand?.call(name, description, logoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBrands,
    TResult Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult Function(String id)? deleteBrand,
    required TResult orElse(),
  }) {
    if (createBrand != null) {
      return createBrand(name, description, logoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBrands value) loadBrands,
    required TResult Function(_CreateBrand value) createBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
  }) {
    return createBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBrands value)? loadBrands,
    TResult? Function(_CreateBrand value)? createBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
  }) {
    return createBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBrands value)? loadBrands,
    TResult Function(_CreateBrand value)? createBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    required TResult orElse(),
  }) {
    if (createBrand != null) {
      return createBrand(this);
    }
    return orElse();
  }
}

abstract class _CreateBrand implements BrandEvent {
  const factory _CreateBrand({
    required final String name,
    final String? description,
    final String? logoUrl,
  }) = _$CreateBrandImpl;

  String get name;
  String? get description;
  String? get logoUrl;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBrandImplCopyWith<_$CreateBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBrandImplCopyWith<$Res> {
  factory _$$DeleteBrandImplCopyWith(
    _$DeleteBrandImpl value,
    $Res Function(_$DeleteBrandImpl) then,
  ) = __$$DeleteBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$DeleteBrandImpl>
    implements _$$DeleteBrandImplCopyWith<$Res> {
  __$$DeleteBrandImplCopyWithImpl(
    _$DeleteBrandImpl _value,
    $Res Function(_$DeleteBrandImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteBrandImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteBrandImpl implements _DeleteBrand {
  const _$DeleteBrandImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'BrandEvent.deleteBrand(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBrandImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      __$$DeleteBrandImplCopyWithImpl<_$DeleteBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBrands,
    required TResult Function(String name, String? description, String? logoUrl)
    createBrand,
    required TResult Function(String id) deleteBrand,
  }) {
    return deleteBrand(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBrands,
    TResult? Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult? Function(String id)? deleteBrand,
  }) {
    return deleteBrand?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBrands,
    TResult Function(String name, String? description, String? logoUrl)?
    createBrand,
    TResult Function(String id)? deleteBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBrands value) loadBrands,
    required TResult Function(_CreateBrand value) createBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
  }) {
    return deleteBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBrands value)? loadBrands,
    TResult? Function(_CreateBrand value)? createBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
  }) {
    return deleteBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBrands value)? loadBrands,
    TResult Function(_CreateBrand value)? createBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(this);
    }
    return orElse();
  }
}

abstract class _DeleteBrand implements BrandEvent {
  const factory _DeleteBrand(final String id) = _$DeleteBrandImpl;

  String get id;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandStateCopyWith<$Res> {
  factory $BrandStateCopyWith(
    BrandState value,
    $Res Function(BrandState) then,
  ) = _$BrandStateCopyWithImpl<$Res, BrandState>;
}

/// @nodoc
class _$BrandStateCopyWithImpl<$Res, $Val extends BrandState>
    implements $BrandStateCopyWith<$Res> {
  _$BrandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BrandState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BrandState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BrandState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BrandState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Brand> brands});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? brands = null}) {
    return _then(
      _$LoadedImpl(
        null == brands
            ? _value._brands
            : brands // ignore: cast_nullable_to_non_nullable
                  as List<Brand>,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Brand> brands) : _brands = brands;

  final List<Brand> _brands;
  @override
  List<Brand> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString() {
    return 'BrandState.loaded(brands: $brands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_brands));

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return loaded(brands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(brands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(brands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BrandState {
  const factory _Loaded(final List<Brand> brands) = _$LoadedImpl;

  List<Brand> get brands;

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatingImplCopyWith<$Res> {
  factory _$$CreatingImplCopyWith(
    _$CreatingImpl value,
    $Res Function(_$CreatingImpl) then,
  ) = __$$CreatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$CreatingImpl>
    implements _$$CreatingImplCopyWith<$Res> {
  __$$CreatingImplCopyWithImpl(
    _$CreatingImpl _value,
    $Res Function(_$CreatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreatingImpl implements _Creating {
  const _$CreatingImpl();

  @override
  String toString() {
    return 'BrandState.creating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }
}

abstract class _Creating implements BrandState {
  const factory _Creating() = _$CreatingImpl;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
    _$CreatedImpl value,
    $Res Function(_$CreatedImpl) then,
  ) = __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Brand brand});
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
    _$CreatedImpl _value,
    $Res Function(_$CreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? brand = null}) {
    return _then(
      _$CreatedImpl(
        null == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as Brand,
      ),
    );
  }
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.brand);

  @override
  final Brand brand;

  @override
  String toString() {
    return 'BrandState.created(brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return created(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return created?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements BrandState {
  const factory _Created(final Brand brand) = _$CreatedImpl;

  Brand get brand;

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BrandState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function() creating,
    required TResult Function(Brand brand) created,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function()? creating,
    TResult? Function(Brand brand)? created,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function()? creating,
    TResult Function(Brand brand)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Creating value)? creating,
    TResult? Function(_Created value)? created,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BrandState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
