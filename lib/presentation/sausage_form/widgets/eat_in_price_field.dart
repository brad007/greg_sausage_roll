import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:greg_sausage_roll/application/sausage/form/sausage_form_bloc.dart';

class EatInPriceField extends HookWidget {
  const EatInPriceField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<SausageFormBloc, SausageFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.sausage.eatInPrice.fold(
          () => '',
          (a) => '$a',
        );
      },
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Eat In Price',
          ),
          onChanged: (value) => context
              .read<SausageFormBloc>()
              .add(SausageFormEvent.eatInPriceChanged(double.parse(value))),
          validator: (_) =>
              context.read<SausageFormBloc>().state.sausage.eatInPrice.fold(
                    () => null,
                    (eatInPrice) => eatInPrice.safeValue > 0
                        ? null
                        : 'Eat In Price must be greater than 0',
                  ),
        );
      },
    );
  }
}
