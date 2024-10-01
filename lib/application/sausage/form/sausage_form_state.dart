part of 'sausage_form_bloc.dart';

@freezed
class SausageFormState with _$SausageFormState {
  const factory SausageFormState({
    required SausageModel sausage,
    required bool isEditing,
    required bool isSaving,
    required bool showErrorMessage,
    required Option<Failure> failure,
    required Option<Unit> success,
  }) = _SausageFormState;

  factory SausageFormState.initial() => SausageFormState(
        sausage: SausageModel.empty(),
        isEditing: false,
        isSaving: false,
        showErrorMessage: false,
        failure: none(),
        success: none(),
      );
}

extension SausageFormStateExtension on SausageFormState {
  bool isValid() {
    return sausage.articleCode.fold(() => false, (a) => a.isValid()) &&
        sausage.shopCode.fold(() => false, (a) => a.isValid()) &&
        sausage.eatOutPrice.fold(() => false, (a) => a.isValid()) &&
        sausage.eatInPrice.fold(() => false, (a) => a.isValid()) &&
        sausage.articleName.fold(() => false, (a) => a.isValid()) &&
        sausage.internalDescription.fold(() => false, (a) => a.isValid()) &&
        sausage.customerDescription.fold(() => false, (a) => a.isValid());
  }
}
