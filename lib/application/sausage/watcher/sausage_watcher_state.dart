part of 'sausage_watcher_bloc.dart';

@freezed
class SausageWatcherState with _$SausageWatcherState {
  const factory SausageWatcherState.initial() = _Initial;

  const factory SausageWatcherState.loading() = _Loading;

  const factory SausageWatcherState.loadSuccess(List<SausageModel> sausages) =
      _LoadSuccess;

  const factory SausageWatcherState.loadFailure(Failure failure) = _LoadFailure;
}
