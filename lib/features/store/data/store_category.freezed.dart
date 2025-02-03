// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreCategory _$StoreCategoryFromJson(Map<String, dynamic> json) {
  return _StoreCategory.fromJson(json);
}

/// @nodoc
mixin _$StoreCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  /// Serializes this StoreCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCategoryCopyWith<StoreCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCategoryCopyWith<$Res> {
  factory $StoreCategoryCopyWith(
          StoreCategory value, $Res Function(StoreCategory) then) =
      _$StoreCategoryCopyWithImpl<$Res, StoreCategory>;
  @useResult
  $Res call(
      {String id, String name, double? width, double? height, bool visible});
}

/// @nodoc
class _$StoreCategoryCopyWithImpl<$Res, $Val extends StoreCategory>
    implements $StoreCategoryCopyWith<$Res> {
  _$StoreCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? visible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreCategoryImplCopyWith<$Res>
    implements $StoreCategoryCopyWith<$Res> {
  factory _$$StoreCategoryImplCopyWith(
          _$StoreCategoryImpl value, $Res Function(_$StoreCategoryImpl) then) =
      __$$StoreCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, double? width, double? height, bool visible});
}

/// @nodoc
class __$$StoreCategoryImplCopyWithImpl<$Res>
    extends _$StoreCategoryCopyWithImpl<$Res, _$StoreCategoryImpl>
    implements _$$StoreCategoryImplCopyWith<$Res> {
  __$$StoreCategoryImplCopyWithImpl(
      _$StoreCategoryImpl _value, $Res Function(_$StoreCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? visible = null,
  }) {
    return _then(_$StoreCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreCategoryImpl implements _StoreCategory {
  const _$StoreCategoryImpl(
      {required this.id,
      this.name = "",
      this.width,
      this.height,
      this.visible = true});

  factory _$StoreCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreCategoryImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final double? width;
  @override
  final double? height;
  @override
  @JsonKey()
  final bool visible;

  @override
  String toString() {
    return 'StoreCategory(id: $id, name: $name, width: $width, height: $height, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, width, height, visible);

  /// Create a copy of StoreCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreCategoryImplCopyWith<_$StoreCategoryImpl> get copyWith =>
      __$$StoreCategoryImplCopyWithImpl<_$StoreCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreCategoryImplToJson(
      this,
    );
  }
}

abstract class _StoreCategory implements StoreCategory {
  const factory _StoreCategory(
      {required final String id,
      final String name,
      final double? width,
      final double? height,
      final bool visible}) = _$StoreCategoryImpl;

  factory _StoreCategory.fromJson(Map<String, dynamic> json) =
      _$StoreCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double? get width;
  @override
  double? get height;
  @override
  bool get visible;

  /// Create a copy of StoreCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreCategoryImplCopyWith<_$StoreCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
