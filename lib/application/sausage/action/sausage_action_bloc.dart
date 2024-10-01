import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/failure.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/sausage/sausage_facade.dart';
import 'package:injectable/injectable.dart';

part 'sausage_action_bloc.freezed.dart';
part 'sausage_action_event.dart';
part 'sausage_action_state.dart';

@injectable
class SausageActionBloc extends Bloc<SausageActionEvent, SausageActionState> {
  SausageActionBloc(this._sausageFacade)
      : super(const SausageActionState.initial()) {
    on<SausageActionEvent>((event, emit) async {
      await event.map(
        delete: (value) async {
          emit(const SausageActionState.loading());
          final result = await _sausageFacade
              .deleteSausage(value.sausage.articleCode)
              .run();
          result.fold(
            (failure) => emit(SausageActionState.deletedFailure(failure)),
            (_) => emit(const SausageActionState.deletedSuccessfully()),
          );
        },
      );
    });
  }

  final SausageFacade _sausageFacade;
}
