import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greg_sausage_roll/application/sausage/form/sausage_form_bloc.dart';
import 'package:jiffy/jiffy.dart';

class AvailableFromField extends StatelessWidget {
  const AvailableFromField({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return BlocBuilder<SausageFormBloc, SausageFormState>(
      builder: (BuildContext context, state) {
        return GestureDetector(
          onTap: () {
            showDatePicker(
              context: context,
              initialDate: now,
              firstDate: DateTime(now.year - 30),
              lastDate: DateTime(now.year + 30),
            ).then((value) {
              if (value != null) {
                context
                    .read<SausageFormBloc>()
                    .add(SausageFormEvent.availableFromChanged(value));
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Available From',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(
                      Jiffy.parseFromDateTime(
                        state.sausage.availableFrom.fold(
                          DateTime.now,
                          (some) => some,
                        ),
                      ).format(pattern: 'MMMM yyyy'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
