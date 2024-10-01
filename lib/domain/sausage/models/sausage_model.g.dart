// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sausage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SausageModelImpl _$$SausageModelImplFromJson(Map<String, dynamic> json) =>
    _$SausageModelImpl(
      articleCode:
          const ValueStringConverter().fromJson(json['articleCode'] as String?),
      shopCode:
          const ValueStringConverter().fromJson(json['shopCode'] as String?),
      availableFrom:
          const DateTimeConverter().fromJson(json['availableFrom'] as String?),
      availableUntil:
          const DateTimeConverter().fromJson(json['availableUntil'] as String?),
      eatOutPrice: const NumberConverter()
          .fromJson((json['eatOutPrice'] as num?)?.toDouble()),
      eatInPrice: const NumberConverter()
          .fromJson((json['eatInPrice'] as num?)?.toDouble()),
      articleName:
          const ValueStringConverter().fromJson(json['articleName'] as String?),
      dartParts: const ListValueStringConverter()
          .fromJson(json['dartParts'] as List<String>?),
      internalDescription: const ValueStringConverter()
          .fromJson(json['internalDescription'] as String?),
      customerDescription: const ValueStringConverter()
          .fromJson(json['customerDescription'] as String?),
      imageUri:
          const ValueStringConverter().fromJson(json['imageUri'] as String?),
      thumbnailUri: const ValueStringConverter()
          .fromJson(json['thumbnailUri'] as String?),
    );

Map<String, dynamic> _$$SausageModelImplToJson(_$SausageModelImpl instance) =>
    <String, dynamic>{
      'articleCode': const ValueStringConverter().toJson(instance.articleCode),
      'shopCode': const ValueStringConverter().toJson(instance.shopCode),
      'availableFrom': const DateTimeConverter().toJson(instance.availableFrom),
      'availableUntil':
          const DateTimeConverter().toJson(instance.availableUntil),
      'eatOutPrice': const NumberConverter().toJson(instance.eatOutPrice),
      'eatInPrice': const NumberConverter().toJson(instance.eatInPrice),
      'articleName': const ValueStringConverter().toJson(instance.articleName),
      'dartParts': const ListValueStringConverter().toJson(instance.dartParts),
      'internalDescription':
          const ValueStringConverter().toJson(instance.internalDescription),
      'customerDescription':
          const ValueStringConverter().toJson(instance.customerDescription),
      'imageUri': const ValueStringConverter().toJson(instance.imageUri),
      'thumbnailUri':
          const ValueStringConverter().toJson(instance.thumbnailUri),
    };
