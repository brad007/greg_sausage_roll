part of 'sausage_action_bloc.dart';

@freezed
class SausageActionEvent with _$SausageActionEvent {
  const factory SausageActionEvent.delete(SausageModel sausage) = _Delete;
}
