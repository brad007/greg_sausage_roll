part of 'sausage_watcher_bloc.dart';

@freezed
class SausageWatcherEvent with _$SausageWatcherEvent {
  const factory SausageWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory SausageWatcherEvent.sausagesReceived(
    Either<Failure, List<SausageModel>> failureOrSausages,
  ) = _SausagesReceived;
}
