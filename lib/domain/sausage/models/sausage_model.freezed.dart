// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sausage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SausageModel _$SausageModelFromJson(Map<String, dynamic> json) {
  return _SausageModel.fromJson(json);
}

/// @nodoc
mixin _$SausageModel {
  @ValueStringConverter()
  Option<ValueString> get articleCode => throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get shopCode => throw _privateConstructorUsedError;
  @DateTimeConverter()
  Option<DateTime> get availableFrom => throw _privateConstructorUsedError;
  @DateTimeConverter()
  Option<DateTime> get availableUntil => throw _privateConstructorUsedError;
  @NumberConverter()
  Option<Number> get eatOutPrice => throw _privateConstructorUsedError;
  @NumberConverter()
  Option<Number> get eatInPrice => throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get articleName => throw _privateConstructorUsedError;
  @ListValueStringConverter()
  Option<List<ValueString>> get dartParts => throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get internalDescription =>
      throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get customerDescription =>
      throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get imageUri => throw _privateConstructorUsedError;
  @ValueStringConverter()
  Option<ValueString> get thumbnailUri => throw _privateConstructorUsedError;

  /// Serializes this SausageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SausageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SausageModelCopyWith<SausageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SausageModelCopyWith<$Res> {
  factory $SausageModelCopyWith(
          SausageModel value, $Res Function(SausageModel) then) =
      _$SausageModelCopyWithImpl<$Res, SausageModel>;
  @useResult
  $Res call(
      {@ValueStringConverter() Option<ValueString> articleCode,
      @ValueStringConverter() Option<ValueString> shopCode,
      @DateTimeConverter() Option<DateTime> availableFrom,
      @DateTimeConverter() Option<DateTime> availableUntil,
      @NumberConverter() Option<Number> eatOutPrice,
      @NumberConverter() Option<Number> eatInPrice,
      @ValueStringConverter() Option<ValueString> articleName,
      @ListValueStringConverter() Option<List<ValueString>> dartParts,
      @ValueStringConverter() Option<ValueString> internalDescription,
      @ValueStringConverter() Option<ValueString> customerDescription,
      @ValueStringConverter() Option<ValueString> imageUri,
      @ValueStringConverter() Option<ValueString> thumbnailUri});
}

/// @nodoc
class _$SausageModelCopyWithImpl<$Res, $Val extends SausageModel>
    implements $SausageModelCopyWith<$Res> {
  _$SausageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SausageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleCode = null,
    Object? shopCode = null,
    Object? availableFrom = null,
    Object? availableUntil = null,
    Object? eatOutPrice = null,
    Object? eatInPrice = null,
    Object? articleName = null,
    Object? dartParts = null,
    Object? internalDescription = null,
    Object? customerDescription = null,
    Object? imageUri = null,
    Object? thumbnailUri = null,
  }) {
    return _then(_value.copyWith(
      articleCode: null == articleCode
          ? _value.articleCode
          : articleCode // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      availableUntil: null == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      eatOutPrice: null == eatOutPrice
          ? _value.eatOutPrice
          : eatOutPrice // ignore: cast_nullable_to_non_nullable
              as Option<Number>,
      eatInPrice: null == eatInPrice
          ? _value.eatInPrice
          : eatInPrice // ignore: cast_nullable_to_non_nullable
              as Option<Number>,
      articleName: null == articleName
          ? _value.articleName
          : articleName // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      dartParts: null == dartParts
          ? _value.dartParts
          : dartParts // ignore: cast_nullable_to_non_nullable
              as Option<List<ValueString>>,
      internalDescription: null == internalDescription
          ? _value.internalDescription
          : internalDescription // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      customerDescription: null == customerDescription
          ? _value.customerDescription
          : customerDescription // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      thumbnailUri: null == thumbnailUri
          ? _value.thumbnailUri
          : thumbnailUri // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SausageModelImplCopyWith<$Res>
    implements $SausageModelCopyWith<$Res> {
  factory _$$SausageModelImplCopyWith(
          _$SausageModelImpl value, $Res Function(_$SausageModelImpl) then) =
      __$$SausageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ValueStringConverter() Option<ValueString> articleCode,
      @ValueStringConverter() Option<ValueString> shopCode,
      @DateTimeConverter() Option<DateTime> availableFrom,
      @DateTimeConverter() Option<DateTime> availableUntil,
      @NumberConverter() Option<Number> eatOutPrice,
      @NumberConverter() Option<Number> eatInPrice,
      @ValueStringConverter() Option<ValueString> articleName,
      @ListValueStringConverter() Option<List<ValueString>> dartParts,
      @ValueStringConverter() Option<ValueString> internalDescription,
      @ValueStringConverter() Option<ValueString> customerDescription,
      @ValueStringConverter() Option<ValueString> imageUri,
      @ValueStringConverter() Option<ValueString> thumbnailUri});
}

/// @nodoc
class __$$SausageModelImplCopyWithImpl<$Res>
    extends _$SausageModelCopyWithImpl<$Res, _$SausageModelImpl>
    implements _$$SausageModelImplCopyWith<$Res> {
  __$$SausageModelImplCopyWithImpl(
      _$SausageModelImpl _value, $Res Function(_$SausageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SausageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleCode = null,
    Object? shopCode = null,
    Object? availableFrom = null,
    Object? availableUntil = null,
    Object? eatOutPrice = null,
    Object? eatInPrice = null,
    Object? articleName = null,
    Object? dartParts = null,
    Object? internalDescription = null,
    Object? customerDescription = null,
    Object? imageUri = null,
    Object? thumbnailUri = null,
  }) {
    return _then(_$SausageModelImpl(
      articleCode: null == articleCode
          ? _value.articleCode
          : articleCode // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      availableUntil: null == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      eatOutPrice: null == eatOutPrice
          ? _value.eatOutPrice
          : eatOutPrice // ignore: cast_nullable_to_non_nullable
              as Option<Number>,
      eatInPrice: null == eatInPrice
          ? _value.eatInPrice
          : eatInPrice // ignore: cast_nullable_to_non_nullable
              as Option<Number>,
      articleName: null == articleName
          ? _value.articleName
          : articleName // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      dartParts: null == dartParts
          ? _value.dartParts
          : dartParts // ignore: cast_nullable_to_non_nullable
              as Option<List<ValueString>>,
      internalDescription: null == internalDescription
          ? _value.internalDescription
          : internalDescription // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      customerDescription: null == customerDescription
          ? _value.customerDescription
          : customerDescription // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
      thumbnailUri: null == thumbnailUri
          ? _value.thumbnailUri
          : thumbnailUri // ignore: cast_nullable_to_non_nullable
              as Option<ValueString>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SausageModelImpl extends _SausageModel {
  const _$SausageModelImpl(
      {@ValueStringConverter() required this.articleCode,
      @ValueStringConverter() required this.shopCode,
      @DateTimeConverter() required this.availableFrom,
      @DateTimeConverter() required this.availableUntil,
      @NumberConverter() required this.eatOutPrice,
      @NumberConverter() required this.eatInPrice,
      @ValueStringConverter() required this.articleName,
      @ListValueStringConverter() required this.dartParts,
      @ValueStringConverter() required this.internalDescription,
      @ValueStringConverter() required this.customerDescription,
      @ValueStringConverter() required this.imageUri,
      @ValueStringConverter() required this.thumbnailUri})
      : super._();

  factory _$SausageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SausageModelImplFromJson(json);

  @override
  @ValueStringConverter()
  final Option<ValueString> articleCode;
  @override
  @ValueStringConverter()
  final Option<ValueString> shopCode;
  @override
  @DateTimeConverter()
  final Option<DateTime> availableFrom;
  @override
  @DateTimeConverter()
  final Option<DateTime> availableUntil;
  @override
  @NumberConverter()
  final Option<Number> eatOutPrice;
  @override
  @NumberConverter()
  final Option<Number> eatInPrice;
  @override
  @ValueStringConverter()
  final Option<ValueString> articleName;
  @override
  @ListValueStringConverter()
  final Option<List<ValueString>> dartParts;
  @override
  @ValueStringConverter()
  final Option<ValueString> internalDescription;
  @override
  @ValueStringConverter()
  final Option<ValueString> customerDescription;
  @override
  @ValueStringConverter()
  final Option<ValueString> imageUri;
  @override
  @ValueStringConverter()
  final Option<ValueString> thumbnailUri;

  @override
  String toString() {
    return 'SausageModel(articleCode: $articleCode, shopCode: $shopCode, availableFrom: $availableFrom, availableUntil: $availableUntil, eatOutPrice: $eatOutPrice, eatInPrice: $eatInPrice, articleName: $articleName, dartParts: $dartParts, internalDescription: $internalDescription, customerDescription: $customerDescription, imageUri: $imageUri, thumbnailUri: $thumbnailUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SausageModelImpl &&
            (identical(other.articleCode, articleCode) ||
                other.articleCode == articleCode) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableUntil, availableUntil) ||
                other.availableUntil == availableUntil) &&
            (identical(other.eatOutPrice, eatOutPrice) ||
                other.eatOutPrice == eatOutPrice) &&
            (identical(other.eatInPrice, eatInPrice) ||
                other.eatInPrice == eatInPrice) &&
            (identical(other.articleName, articleName) ||
                other.articleName == articleName) &&
            (identical(other.dartParts, dartParts) ||
                other.dartParts == dartParts) &&
            (identical(other.internalDescription, internalDescription) ||
                other.internalDescription == internalDescription) &&
            (identical(other.customerDescription, customerDescription) ||
                other.customerDescription == customerDescription) &&
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri) &&
            (identical(other.thumbnailUri, thumbnailUri) ||
                other.thumbnailUri == thumbnailUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      articleCode,
      shopCode,
      availableFrom,
      availableUntil,
      eatOutPrice,
      eatInPrice,
      articleName,
      dartParts,
      internalDescription,
      customerDescription,
      imageUri,
      thumbnailUri);

  /// Create a copy of SausageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SausageModelImplCopyWith<_$SausageModelImpl> get copyWith =>
      __$$SausageModelImplCopyWithImpl<_$SausageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SausageModelImplToJson(
      this,
    );
  }
}

abstract class _SausageModel extends SausageModel {
  const factory _SausageModel(
      {@ValueStringConverter() required final Option<ValueString> articleCode,
      @ValueStringConverter() required final Option<ValueString> shopCode,
      @DateTimeConverter() required final Option<DateTime> availableFrom,
      @DateTimeConverter() required final Option<DateTime> availableUntil,
      @NumberConverter() required final Option<Number> eatOutPrice,
      @NumberConverter() required final Option<Number> eatInPrice,
      @ValueStringConverter() required final Option<ValueString> articleName,
      @ListValueStringConverter()
      required final Option<List<ValueString>> dartParts,
      @ValueStringConverter()
      required final Option<ValueString> internalDescription,
      @ValueStringConverter()
      required final Option<ValueString> customerDescription,
      @ValueStringConverter() required final Option<ValueString> imageUri,
      @ValueStringConverter()
      required final Option<ValueString> thumbnailUri}) = _$SausageModelImpl;
  const _SausageModel._() : super._();

  factory _SausageModel.fromJson(Map<String, dynamic> json) =
      _$SausageModelImpl.fromJson;

  @override
  @ValueStringConverter()
  Option<ValueString> get articleCode;
  @override
  @ValueStringConverter()
  Option<ValueString> get shopCode;
  @override
  @DateTimeConverter()
  Option<DateTime> get availableFrom;
  @override
  @DateTimeConverter()
  Option<DateTime> get availableUntil;
  @override
  @NumberConverter()
  Option<Number> get eatOutPrice;
  @override
  @NumberConverter()
  Option<Number> get eatInPrice;
  @override
  @ValueStringConverter()
  Option<ValueString> get articleName;
  @override
  @ListValueStringConverter()
  Option<List<ValueString>> get dartParts;
  @override
  @ValueStringConverter()
  Option<ValueString> get internalDescription;
  @override
  @ValueStringConverter()
  Option<ValueString> get customerDescription;
  @override
  @ValueStringConverter()
  Option<ValueString> get imageUri;
  @override
  @ValueStringConverter()
  Option<ValueString> get thumbnailUri;

  /// Create a copy of SausageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SausageModelImplCopyWith<_$SausageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
