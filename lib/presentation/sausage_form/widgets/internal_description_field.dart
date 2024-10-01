import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:greg_sausage_roll/application/sausage/form/sausage_form_bloc.dart';

class InternalDescriptionField extends HookWidget {
  const InternalDescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<SausageFormBloc, SausageFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.sausage.internalDescription.fold(
          () => '',
          (a) => a.safeValue,
        );
      },
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Internal Description',
          ),
          onChanged: (value) => context
              .read<SausageFormBloc>()
              .add(SausageFormEvent.internalDescriptionChanged(value)),
          validator: (_) => context
              .read<SausageFormBloc>()
              .state
              .sausage
              .internalDescription
              .fold(
                () => null,
                (internalDescription) => internalDescription.value.fold(
                  (f) => f.maybeMap(
                    empty: (_) => 'Cannot be empty',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
        );
      },
    );
  }
}
