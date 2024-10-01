import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/application/sausage/form/sausage_form_bloc.dart';
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_objects_extensions.dart';
import 'package:greg_sausage_roll/presentation/list_extensions.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/article_code_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/article_name_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/available_from_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/available_from_until.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/customer_description_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/eat_in_price_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/eat_out_price_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/internal_description_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_form/widgets/shop_code_field.dart';
import 'package:greg_sausage_roll/presentation/sausage_scaffold.dart';
import 'package:greg_sausage_roll/service_locator_injection.dart';

@RoutePage()
class SausageFormScreen extends StatelessWidget {
  const SausageFormScreen({
    required this.sausage,
    super.key,
  });

  final Option<SausageModel> sausage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SausageFormBloc>(
      create: (_) =>
          getIt<SausageFormBloc>()..add(SausageFormEvent.initial(sausage)),
      child: BlocConsumer<SausageFormBloc, SausageFormState>(
        listener: (context, state) {
          if (state.success.isSome()) {
            context.router.maybePop();
          }
        },
        builder: (context, state) {
          return SausageScaffold(
            isLoading: state.isSaving,
            appBar: AppBar(
              title: const Text(
                'Sausage Form',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ).toOption(),
            body: Form(
              autovalidateMode: state.showErrorMessage
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: CustomScrollView(
                  slivers: <Widget>[
                    const SizedBox(height: 16),
                    const ArticleCodeField(),
                    const SizedBox(height: 16),
                    const ShopCodeField(),
                    const SizedBox(height: 16),
                    const ArticleNameField(),
                    const SizedBox(height: 16),
                    const InternalDescriptionField(),
                    const SizedBox(height: 16),
                    const CustomerDescriptionField(),
                    const SizedBox(height: 16),
                    const EatOutPriceField(),
                    const SizedBox(height: 16),
                    const EatInPriceField(),
                    const SizedBox(height: 16),
                    const AvailableFromField(),
                    const SizedBox(height: 16),
                    const AvailableUntilField(),
                    const SizedBox(height: 16),
                    MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        state.isEditing ? 'Update' : 'Save',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if (state.isValid()) {
                          context.read<SausageFormBloc>().add(
                                state.isEditing
                                    ? const SausageFormEvent.updated()
                                    : const SausageFormEvent.saved(),
                              );
                        } else {
                          context.read<SausageFormBloc>().add(
                                const SausageFormEvent.showErrorMessage(),
                              );
                        }
                      },
                    ),
                  ].toSlivers(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
