import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/converters.dart';
import 'package:greg_sausage_roll/domain/value_objects/number.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';

part 'sausage_model.freezed.dart';
part 'sausage_model.g.dart';

@freezed
class SausageModel with _$SausageModel {
  const SausageModel._();

  const factory SausageModel({
    @ValueStringConverter() required Option<ValueString> articleCode,
    @ValueStringConverter() required Option<ValueString> shopCode,
    @DateTimeConverter() required Option<DateTime> availableFrom,
    @DateTimeConverter() required Option<DateTime> availableUntil,
    @NumberConverter() required Option<Number> eatOutPrice,
    @NumberConverter() required Option<Number> eatInPrice,
    @ValueStringConverter() required Option<ValueString> articleName,
    @ListValueStringConverter() required Option<List<ValueString>> dartParts,
    @ValueStringConverter() required Option<ValueString> internalDescription,
    @ValueStringConverter() required Option<ValueString> customerDescription,
    @ValueStringConverter() required Option<ValueString> imageUri,
    @ValueStringConverter() required Option<ValueString> thumbnailUri,
  }) = _SausageModel;

  factory SausageModel.empty() => SausageModel(
        articleCode: none(),
        shopCode: none(),
        availableFrom: none(),
        availableUntil: none(),
        eatOutPrice: none(),
        eatInPrice: none(),
        articleName: none(),
        dartParts: none(),
        internalDescription: none(),
        customerDescription: none(),
        imageUri: none(),
        thumbnailUri: none(),
      );

  factory SausageModel.fromJson(Map<String, dynamic> json) =>
      _$SausageModelFromJson(json);
}
