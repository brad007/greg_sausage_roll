import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:greg_sausage_roll/application/sausage/watcher/sausage_watcher_bloc.dart';
import 'package:greg_sausage_roll/domain/value_objects/value_string.dart';
import 'package:greg_sausage_roll/presentation/app_router.gr.dart';
import 'package:greg_sausage_roll/service_locator_injection.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Greg's Sausage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocProvider<SausageWatcherBloc>(
        create: (_) => getIt<SausageWatcherBloc>()
          ..add(
            const SausageWatcherEvent.watchAllStarted(),
          ),
        child: BlocBuilder<SausageWatcherBloc, SausageWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (value) {
                if (value.sausages.isEmpty) {
                  return const Center(
                    child: Text('No sausages!'),
                  );
                }
                return ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: value.sausages.length,
                  itemBuilder: (context, index) {
                    final sausage = value.sausages[index];
                    return GestureDetector(
                      onTap: () {
                        context.router.navigate(SausageFormRoute(
                          sausage: some(sausage),
                        ));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              sausage.articleName
                                  .fold(
                                    () => ValueString.fromString(none()),
                                    (some) => some,
                                  )
                                  .safeValue,
                            ),
                            subtitle: Text(
                              sausage.articleCode
                                  .fold(
                                    () => ValueString.fromString(none()),
                                    (some) => some,
                                  )
                                  .safeValue,
                            ),
                            trailing: Text(
                              sausage.availableFrom
                                          .fold(DateTime.now, (some) => some)
                                          .isBefore(DateTime.now()) &&
                                      sausage.availableUntil
                                          .fold(DateTime.now, (some) => some)
                                          .isAfter(DateTime.now())
                                  ? 'Available'
                                  : 'Not Available',
                            ),
                          ),
                          Text(
                              'Eat in? R${sausage.eatInPrice.fold(() => 0, (some) => some.safeValue)}'),
                          Text(
                              'Eat out? R${sausage.eatOutPrice.fold(() => 0, (some) => some.safeValue)}'),
                        ],
                      ),
                    );
                  },
                );
              },
              loadFailure: (_) => const Center(
                child: Text('Unable to load sausages!'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.navigate(SausageFormRoute(sausage: none()));
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
