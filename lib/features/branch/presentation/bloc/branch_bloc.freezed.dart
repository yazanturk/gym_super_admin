// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BranchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? brandId) loadBranches,
    required TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )
    createBranch,
    required TResult Function(String id) deleteBranch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? brandId)? loadBranches,
    TResult? Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult? Function(String id)? deleteBranch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? brandId)? loadBranches,
    TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult Function(String id)? deleteBranch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBranches value) loadBranches,
    required TResult Function(_CreateBranch value) createBranch,
    required TResult Function(_DeleteBranch value) deleteBranch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBranches value)? loadBranches,
    TResult? Function(_CreateBranch value)? createBranch,
    TResult? Function(_DeleteBranch value)? deleteBranch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBranches value)? loadBranches,
    TResult Function(_CreateBranch value)? createBranch,
    TResult Function(_DeleteBranch value)? deleteBranch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchEventCopyWith<$Res> {
  factory $BranchEventCopyWith(
    BranchEvent value,
    $Res Function(BranchEvent) then,
  ) = _$BranchEventCopyWithImpl<$Res, BranchEvent>;
}

/// @nodoc
class _$BranchEventCopyWithImpl<$Res, $Val extends BranchEvent>
    implements $BranchEventCopyWith<$Res> {
  _$BranchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadBranchesImplCopyWith<$Res> {
  factory _$$LoadBranchesImplCopyWith(
    _$LoadBranchesImpl value,
    $Res Function(_$LoadBranchesImpl) then,
  ) = __$$LoadBranchesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? brandId});
}

/// @nodoc
class __$$LoadBranchesImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$LoadBranchesImpl>
    implements _$$LoadBranchesImplCopyWith<$Res> {
  __$$LoadBranchesImplCopyWithImpl(
    _$LoadBranchesImpl _value,
    $Res Function(_$LoadBranchesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? brandId = freezed}) {
    return _then(
      _$LoadBranchesImpl(
        brandId: freezed == brandId
            ? _value.brandId
            : brandId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadBranchesImpl implements _LoadBranches {
  const _$LoadBranchesImpl({this.brandId});

  @override
  final String? brandId;

  @override
  String toString() {
    return 'BranchEvent.loadBranches(brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBranchesImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brandId);

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBranchesImplCopyWith<_$LoadBranchesImpl> get copyWith =>
      __$$LoadBranchesImplCopyWithImpl<_$LoadBranchesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? brandId) loadBranches,
    required TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )
    createBranch,
    required TResult Function(String id) deleteBranch,
  }) {
    return loadBranches(brandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? brandId)? loadBranches,
    TResult? Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult? Function(String id)? deleteBranch,
  }) {
    return loadBranches?.call(brandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? brandId)? loadBranches,
    TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult Function(String id)? deleteBranch,
    required TResult orElse(),
  }) {
    if (loadBranches != null) {
      return loadBranches(brandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBranches value) loadBranches,
    required TResult Function(_CreateBranch value) createBranch,
    required TResult Function(_DeleteBranch value) deleteBranch,
  }) {
    return loadBranches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBranches value)? loadBranches,
    TResult? Function(_CreateBranch value)? createBranch,
    TResult? Function(_DeleteBranch value)? deleteBranch,
  }) {
    return loadBranches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBranches value)? loadBranches,
    TResult Function(_CreateBranch value)? createBranch,
    TResult Function(_DeleteBranch value)? deleteBranch,
    required TResult orElse(),
  }) {
    if (loadBranches != null) {
      return loadBranches(this);
    }
    return orElse();
  }
}

abstract class _LoadBranches implements BranchEvent {
  const factory _LoadBranches({final String? brandId}) = _$LoadBranchesImpl;

  String? get brandId;

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBranchesImplCopyWith<_$LoadBranchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBranchImplCopyWith<$Res> {
  factory _$$CreateBranchImplCopyWith(
    _$CreateBranchImpl value,
    $Res Function(_$CreateBranchImpl) then,
  ) = __$$CreateBranchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String brandId,
    String name,
    String managerEmail,
    String managerPassword,
    String? address,
    String? phone,
    String? logoUrl,
  });
}

/// @nodoc
class __$$CreateBranchImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$CreateBranchImpl>
    implements _$$CreateBranchImplCopyWith<$Res> {
  __$$CreateBranchImplCopyWithImpl(
    _$CreateBranchImpl _value,
    $Res Function(_$CreateBranchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
    Object? name = null,
    Object? managerEmail = null,
    Object? managerPassword = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(
      _$CreateBranchImpl(
        brandId: null == brandId
            ? _value.brandId
            : brandId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        managerEmail: null == managerEmail
            ? _value.managerEmail
            : managerEmail // ignore: cast_nullable_to_non_nullable
                  as String,
        managerPassword: null == managerPassword
            ? _value.managerPassword
            : managerPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
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

class _$CreateBranchImpl implements _CreateBranch {
  const _$CreateBranchImpl({
    required this.brandId,
    required this.name,
    required this.managerEmail,
    required this.managerPassword,
    this.address,
    this.phone,
    this.logoUrl,
  });

  @override
  final String brandId;
  @override
  final String name;
  @override
  final String managerEmail;
  @override
  final String managerPassword;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? logoUrl;

  @override
  String toString() {
    return 'BranchEvent.createBranch(brandId: $brandId, name: $name, managerEmail: $managerEmail, managerPassword: $managerPassword, address: $address, phone: $phone, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBranchImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.managerEmail, managerEmail) ||
                other.managerEmail == managerEmail) &&
            (identical(other.managerPassword, managerPassword) ||
                other.managerPassword == managerPassword) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    brandId,
    name,
    managerEmail,
    managerPassword,
    address,
    phone,
    logoUrl,
  );

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBranchImplCopyWith<_$CreateBranchImpl> get copyWith =>
      __$$CreateBranchImplCopyWithImpl<_$CreateBranchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? brandId) loadBranches,
    required TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )
    createBranch,
    required TResult Function(String id) deleteBranch,
  }) {
    return createBranch(
      brandId,
      name,
      managerEmail,
      managerPassword,
      address,
      phone,
      logoUrl,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? brandId)? loadBranches,
    TResult? Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult? Function(String id)? deleteBranch,
  }) {
    return createBranch?.call(
      brandId,
      name,
      managerEmail,
      managerPassword,
      address,
      phone,
      logoUrl,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? brandId)? loadBranches,
    TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult Function(String id)? deleteBranch,
    required TResult orElse(),
  }) {
    if (createBranch != null) {
      return createBranch(
        brandId,
        name,
        managerEmail,
        managerPassword,
        address,
        phone,
        logoUrl,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBranches value) loadBranches,
    required TResult Function(_CreateBranch value) createBranch,
    required TResult Function(_DeleteBranch value) deleteBranch,
  }) {
    return createBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBranches value)? loadBranches,
    TResult? Function(_CreateBranch value)? createBranch,
    TResult? Function(_DeleteBranch value)? deleteBranch,
  }) {
    return createBranch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBranches value)? loadBranches,
    TResult Function(_CreateBranch value)? createBranch,
    TResult Function(_DeleteBranch value)? deleteBranch,
    required TResult orElse(),
  }) {
    if (createBranch != null) {
      return createBranch(this);
    }
    return orElse();
  }
}

abstract class _CreateBranch implements BranchEvent {
  const factory _CreateBranch({
    required final String brandId,
    required final String name,
    required final String managerEmail,
    required final String managerPassword,
    final String? address,
    final String? phone,
    final String? logoUrl,
  }) = _$CreateBranchImpl;

  String get brandId;
  String get name;
  String get managerEmail;
  String get managerPassword;
  String? get address;
  String? get phone;
  String? get logoUrl;

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBranchImplCopyWith<_$CreateBranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBranchImplCopyWith<$Res> {
  factory _$$DeleteBranchImplCopyWith(
    _$DeleteBranchImpl value,
    $Res Function(_$DeleteBranchImpl) then,
  ) = __$$DeleteBranchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteBranchImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$DeleteBranchImpl>
    implements _$$DeleteBranchImplCopyWith<$Res> {
  __$$DeleteBranchImplCopyWithImpl(
    _$DeleteBranchImpl _value,
    $Res Function(_$DeleteBranchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteBranchImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteBranchImpl implements _DeleteBranch {
  const _$DeleteBranchImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'BranchEvent.deleteBranch(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBranchImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBranchImplCopyWith<_$DeleteBranchImpl> get copyWith =>
      __$$DeleteBranchImplCopyWithImpl<_$DeleteBranchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? brandId) loadBranches,
    required TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )
    createBranch,
    required TResult Function(String id) deleteBranch,
  }) {
    return deleteBranch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? brandId)? loadBranches,
    TResult? Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult? Function(String id)? deleteBranch,
  }) {
    return deleteBranch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? brandId)? loadBranches,
    TResult Function(
      String brandId,
      String name,
      String managerEmail,
      String managerPassword,
      String? address,
      String? phone,
      String? logoUrl,
    )?
    createBranch,
    TResult Function(String id)? deleteBranch,
    required TResult orElse(),
  }) {
    if (deleteBranch != null) {
      return deleteBranch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBranches value) loadBranches,
    required TResult Function(_CreateBranch value) createBranch,
    required TResult Function(_DeleteBranch value) deleteBranch,
  }) {
    return deleteBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBranches value)? loadBranches,
    TResult? Function(_CreateBranch value)? createBranch,
    TResult? Function(_DeleteBranch value)? deleteBranch,
  }) {
    return deleteBranch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBranches value)? loadBranches,
    TResult Function(_CreateBranch value)? createBranch,
    TResult Function(_DeleteBranch value)? deleteBranch,
    required TResult orElse(),
  }) {
    if (deleteBranch != null) {
      return deleteBranch(this);
    }
    return orElse();
  }
}

abstract class _DeleteBranch implements BranchEvent {
  const factory _DeleteBranch(final String id) = _$DeleteBranchImpl;

  String get id;

  /// Create a copy of BranchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBranchImplCopyWith<_$DeleteBranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BranchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
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
abstract class $BranchStateCopyWith<$Res> {
  factory $BranchStateCopyWith(
    BranchState value,
    $Res Function(BranchState) then,
  ) = _$BranchStateCopyWithImpl<$Res, BranchState>;
}

/// @nodoc
class _$BranchStateCopyWithImpl<$Res, $Val extends BranchState>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchState
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
    extends _$BranchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BranchState.initial()';
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
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

abstract class _Initial implements BranchState {
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
    extends _$BranchStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BranchState.loading()';
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
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

abstract class _Loading implements BranchState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Branch> branches});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branches = null}) {
    return _then(
      _$LoadedImpl(
        null == branches
            ? _value._branches
            : branches // ignore: cast_nullable_to_non_nullable
                  as List<Branch>,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Branch> branches) : _branches = branches;

  final List<Branch> _branches;
  @override
  List<Branch> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  String toString() {
    return 'BranchState.loaded(branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  /// Create a copy of BranchState
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return loaded(branches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(branches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(branches);
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

abstract class _Loaded implements BranchState {
  const factory _Loaded(final List<Branch> branches) = _$LoadedImpl;

  List<Branch> get branches;

  /// Create a copy of BranchState
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
    extends _$BranchStateCopyWithImpl<$Res, _$CreatingImpl>
    implements _$$CreatingImplCopyWith<$Res> {
  __$$CreatingImplCopyWithImpl(
    _$CreatingImpl _value,
    $Res Function(_$CreatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreatingImpl implements _Creating {
  const _$CreatingImpl();

  @override
  String toString() {
    return 'BranchState.creating()';
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
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

abstract class _Creating implements BranchState {
  const factory _Creating() = _$CreatingImpl;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
    _$CreatedImpl value,
    $Res Function(_$CreatedImpl) then,
  ) = __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Branch branch});
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
    _$CreatedImpl _value,
    $Res Function(_$CreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? branch = null}) {
    return _then(
      _$CreatedImpl(
        null == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as Branch,
      ),
    );
  }
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.branch);

  @override
  final Branch branch;

  @override
  String toString() {
    return 'BranchState.created(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branch);

  /// Create a copy of BranchState
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return created(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return created?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(branch);
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

abstract class _Created implements BranchState {
  const factory _Created(final Branch branch) = _$CreatedImpl;

  Branch get branch;

  /// Create a copy of BranchState
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
    extends _$BranchStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchState
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
    return 'BranchState.error(message: $message)';
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

  /// Create a copy of BranchState
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
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() creating,
    required TResult Function(Branch branch) created,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Branch> branches)? loaded,
    TResult? Function()? creating,
    TResult? Function(Branch branch)? created,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? creating,
    TResult Function(Branch branch)? created,
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

abstract class _Error implements BranchState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of BranchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
