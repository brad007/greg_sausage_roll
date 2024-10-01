part of 'sausage_form_bloc.dart';

@freezed
class SausageFormEvent with _$SausageFormEvent {
  const factory SausageFormEvent.articleCodeChanged(String articleCode) =
      _ArticleCodeChanged;

  const factory SausageFormEvent.shopCodeChanged(String shopCode) =
      _ShopCodeChanged;

  const factory SausageFormEvent.availableFromChanged(DateTime availableFrom) =
      _AvailableFromChanged;

  const factory SausageFormEvent.availableUntilChanged(
    DateTime availableUntil,
  ) = _AvailableUntilChanged;

  const factory SausageFormEvent.eatOutPriceChanged(double eatOutPrice) =
      _EatOutPriceChanged;

  const factory SausageFormEvent.eatInPriceChanged(double eatInPrice) =
      _EatInPriceChanged;

  const factory SausageFormEvent.articleNameChanged(String articleName) =
      _ArticleNameChanged;

  const factory SausageFormEvent.dartPartsChanged(List<String> dartParts) =
      _DartPartsChanged;

  const factory SausageFormEvent.internalDescriptionChanged(
    String internalDescription,
  ) = _InternalDescriptionChanged;

  const factory SausageFormEvent.customerDescriptionChanged(
    String customerDescription,
  ) = _CustomerDescriptionChanged;

  const factory SausageFormEvent.imageUriChanged(String imageUri) =
      _ImageUriChanged;

  const factory SausageFormEvent.thumbnailUriChanged(String thumbnailUri) =
      _ThumbnailUriChanged;

  const factory SausageFormEvent.saved() = _Saved;

  const factory SausageFormEvent.updated() = _Updated;

  const factory SausageFormEvent.initial(Option<SausageModel> sausage) =
      _Initial;

  const factory SausageFormEvent.showErrorMessage() = _ShowErrorMessage;
}
