// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/sausage/action/sausage_action_bloc.dart' as _i470;
import 'application/sausage/form/sausage_form_bloc.dart' as _i203;
import 'application/sausage/watcher/sausage_watcher_bloc.dart' as _i848;
import 'domain/sausage/sausage_facade.dart' as _i11;
import 'infrastructure/modules/firebase_module.dart' as _i50;
import 'infrastructure/sausage/sausage_repository.dart' as _i913;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModel = _$FirebaseModel();
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseModel.firebaseFirestore);
    gh.lazySingleton<_i11.SausageFacade>(
      () => _i913.SausageRepository(
          firebaseFirestore: gh<_i974.FirebaseFirestore>()),
      registerFor: {_prod},
    );
    gh.factory<_i203.SausageFormBloc>(
        () => _i203.SausageFormBloc(gh<_i11.SausageFacade>()));
    gh.factory<_i848.SausageWatcherBloc>(
        () => _i848.SausageWatcherBloc(gh<_i11.SausageFacade>()));
    gh.factory<_i470.SausageActionBloc>(
        () => _i470.SausageActionBloc(gh<_i11.SausageFacade>()));
    return this;
  }
}

class _$FirebaseModel extends _i50.FirebaseModel {}
