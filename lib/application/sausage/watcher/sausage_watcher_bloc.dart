import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/failure.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/sausage/sausage_facade.dart';
import 'package:injectable/injectable.dart';

part 'sausage_watcher_bloc.freezed.dart';
part 'sausage_watcher_event.dart';
part 'sausage_watcher_state.dart';

@injectable
class SausageWatcherBloc
    extends Bloc<SausageWatcherEvent, SausageWatcherState> {
  SausageWatcherBloc(this._sausageFacade)
      : super(const SausageWatcherState.initial()) {
    on<SausageWatcherEvent>((event, emit) {
      event.map(
        watchAllStarted: (value) async {
          emit(const SausageWatcherState.loading());
          await _sausagesSubscriptions?.cancel();
          _sausagesSubscriptions = _sausageFacade.getSausages().listen(
            (failureOrSausages) {
              failureOrSausages.fold(
                (failure) => emit(SausageWatcherState.loadFailure(failure)),
                (sausages) => add(
                  SausageWatcherEvent.sausagesReceived(right(sausages)),
                ),
              );
            },
          );
        },
        sausagesReceived: (value) {
          value.failureOrSausages.fold(
            (failure) => emit(SausageWatcherState.loadFailure(failure)),
            (sausages) => emit(SausageWatcherState.loadSuccess(sausages)),
          );
        },
      );
    });
  }

  final SausageFacade _sausageFacade;
  StreamSubscription<Either<Failure, List<SausageModel>>>?
      _sausagesSubscriptions;
}
