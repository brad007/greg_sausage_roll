part of 'sausage_action_bloc.dart';

@freezed
class SausageActionState with _$SausageActionState {
  const factory SausageActionState.initial() = _Initial;

  const factory SausageActionState.loading() = _Loading;

  const factory SausageActionState.deletedSuccessfully() = _DeletedSuccessfully;

  const factory SausageActionState.deletedFailure(Failure failure) = _Failure;
}
