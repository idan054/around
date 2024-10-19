// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventCategory _$EventCategoryFromJson(Map<String, dynamic> json) {
  return _EventCategory.fromJson(json);
}

/// @nodoc
mixin _$EventCategory {
  CategoryType? get categoryType => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  @ColorIntConv()
  Color? get categoryColor => throw _privateConstructorUsedError;
  String? get coverImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCategoryCopyWith<EventCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCategoryCopyWith<$Res> {
  factory $EventCategoryCopyWith(
          EventCategory value, $Res Function(EventCategory) then) =
      _$EventCategoryCopyWithImpl<$Res, EventCategory>;
  @useResult
  $Res call(
      {CategoryType? categoryType,
      String? categoryName,
      @ColorIntConv() Color? categoryColor,
      String? coverImagePath});
}

/// @nodoc
class _$EventCategoryCopyWithImpl<$Res, $Val extends EventCategory>
    implements $EventCategoryCopyWith<$Res> {
  _$EventCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = freezed,
    Object? categoryName = freezed,
    Object? categoryColor = freezed,
    Object? coverImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCategoryImplCopyWith<$Res>
    implements $EventCategoryCopyWith<$Res> {
  factory _$$EventCategoryImplCopyWith(
          _$EventCategoryImpl value, $Res Function(_$EventCategoryImpl) then) =
      __$$EventCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryType? categoryType,
      String? categoryName,
      @ColorIntConv() Color? categoryColor,
      String? coverImagePath});
}

/// @nodoc
class __$$EventCategoryImplCopyWithImpl<$Res>
    extends _$EventCategoryCopyWithImpl<$Res, _$EventCategoryImpl>
    implements _$$EventCategoryImplCopyWith<$Res> {
  __$$EventCategoryImplCopyWithImpl(
      _$EventCategoryImpl _value, $Res Function(_$EventCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = freezed,
    Object? categoryName = freezed,
    Object? categoryColor = freezed,
    Object? coverImagePath = freezed,
  }) {
    return _then(_$EventCategoryImpl(
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EventCategoryImpl implements _EventCategory {
  const _$EventCategoryImpl(
      {this.categoryType,
      this.categoryName,
      @ColorIntConv() this.categoryColor,
      this.coverImagePath});

  factory _$EventCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventCategoryImplFromJson(json);

  @override
  final CategoryType? categoryType;
  @override
  final String? categoryName;
  @override
  @ColorIntConv()
  final Color? categoryColor;
  @override
  final String? coverImagePath;

  @override
  String toString() {
    return 'EventCategory(categoryType: $categoryType, categoryName: $categoryName, categoryColor: $categoryColor, coverImagePath: $coverImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCategoryImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.coverImagePath, coverImagePath) ||
                other.coverImagePath == coverImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryType, categoryName, categoryColor, coverImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCategoryImplCopyWith<_$EventCategoryImpl> get copyWith =>
      __$$EventCategoryImplCopyWithImpl<_$EventCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventCategoryImplToJson(
      this,
    );
  }
}

abstract class _EventCategory implements EventCategory {
  const factory _EventCategory(
      {final CategoryType? categoryType,
      final String? categoryName,
      @ColorIntConv() final Color? categoryColor,
      final String? coverImagePath}) = _$EventCategoryImpl;

  factory _EventCategory.fromJson(Map<String, dynamic> json) =
      _$EventCategoryImpl.fromJson;

  @override
  CategoryType? get categoryType;
  @override
  String? get categoryName;
  @override
  @ColorIntConv()
  Color? get categoryColor;
  @override
  String? get coverImagePath;
  @override
  @JsonKey(ignore: true)
  _$$EventCategoryImplCopyWith<_$EventCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
