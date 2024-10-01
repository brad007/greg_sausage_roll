import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greg_sausage_roll/domain/failure.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/sausage/sausage_facade.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_objects_extensions.dart';
import 'package:injectable/injectable.dart';

part 'sausage_form_bloc.freezed.dart';
part 'sausage_form_event.dart';
part 'sausage_form_state.dart';

@injectable
class SausageFormBloc extends Bloc<SausageFormEvent, SausageFormState> {
  SausageFormBloc(this._sausageFacade) : super(SausageFormState.initial()) {
    on<SausageFormEvent>((event, emit) async {
      await event.map(
        initial: (value) {
          value.sausage.fold(
            () {
              emit(SausageFormState.initial());
            },
            (r) {
              emit(
                SausageFormState(
                  sausage: r,
                  isEditing: true,
                  isSaving: false,
                  showErrorMessage: true,
                  failure: none(),
                  success: none(),
                ),
              );
            },
          );
        },
        articleCodeChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                articleCode: value.articleCode.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        shopCodeChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                shopCode: value.shopCode.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        availableFromChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage
                  .copyWith(availableFrom: value.availableFrom.toOption()),
              failure: none(),
            ),
          );
        },
        availableUntilChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage
                  .copyWith(availableUntil: value.availableUntil.toOption()),
              failure: none(),
            ),
          );
        },
        eatOutPriceChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                eatOutPrice: value.eatOutPrice.toNumber().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        eatInPriceChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage
                  .copyWith(eatInPrice: value.eatInPrice.toNumber().toOption()),
              failure: none(),
            ),
          );
        },
        articleNameChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                articleName: value.articleName.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        dartPartsChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                dartParts: value.dartParts
                    .map((item) => item.toValueString())
                    .toList()
                    .toOption(),
              ),
              failure: none(),
            ),
          );
        },
        internalDescriptionChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                internalDescription:
                    value.internalDescription.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        customerDescriptionChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                customerDescription:
                    value.customerDescription.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        imageUriChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                imageUri: value.imageUri.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        thumbnailUriChanged: (value) {
          emit(
            state.copyWith(
              sausage: state.sausage.copyWith(
                thumbnailUri: value.thumbnailUri.toValueString().toOption(),
              ),
              failure: none(),
            ),
          );
        },
        saved: (value) async {
          emit(
            state.copyWith(
              isSaving: true,
              failure: none(),
            ),
          );
          final result = await _sausageFacade.addSausage(state.sausage).run();

          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSaving: false,
                  failure: some(failure),
                ),
              );
            },
            (right) {
              emit(
                state.copyWith(
                  isSaving: false,
                  failure: none(),
                  success: some(right),
                ),
              );
            },
          );
        },
        updated: (value) async {
          emit(
            state.copyWith(
              isSaving: true,
              failure: none(),
            ),
          );
          final result =
              await _sausageFacade.updateSausage(state.sausage).run();

          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSaving: false,
                  failure: some(failure),
                ),
              );
            },
            (right) {
              emit(
                state.copyWith(
                  isSaving: false,
                  failure: none(),
                  success: some(right),
                ),
              );
            },
          );
        },
        showErrorMessage: (value) {
          emit(
            state.copyWith(
              showErrorMessage: true,
            ),
          );
        },
      );
    });
  }

  final SausageFacade _sausageFacade;
}
