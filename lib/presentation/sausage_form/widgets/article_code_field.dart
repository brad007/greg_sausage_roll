import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:greg_sausage_roll/application/sausage/form/sausage_form_bloc.dart';

class ArticleCodeField extends HookWidget {
  const ArticleCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<SausageFormBloc, SausageFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.sausage.articleCode.fold(
          () => '',
          (a) => a.safeValue,
        );
      },
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Article Code',
          ),
          onChanged: (value) => context
              .read<SausageFormBloc>()
              .add(SausageFormEvent.articleCodeChanged(value)),
          validator: (_) =>
              context.read<SausageFormBloc>().state.sausage.articleCode.fold(
                    () => null,
                    (articleCode) => articleCode.value.fold(
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
