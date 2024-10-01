// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i6;
import 'package:fpdart/fpdart.dart' as _i4;
import 'package:greg_sausage_roll/domain/sausage/models/sausage_model.dart'
    as _i5;
import 'package:greg_sausage_roll/presentation/home/home_screen.dart' as _i1;
import 'package:greg_sausage_roll/presentation/sausage_form/sausage_form_screen.dart'
    as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.SausageFormScreen]
class SausageFormRoute extends _i3.PageRouteInfo<SausageFormRouteArgs> {
  SausageFormRoute({
    required _i4.Option<_i5.SausageModel> sausage,
    _i6.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          SausageFormRoute.name,
          args: SausageFormRouteArgs(
            sausage: sausage,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SausageFormRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SausageFormRouteArgs>();
      return _i2.SausageFormScreen(
        sausage: args.sausage,
        key: args.key,
      );
    },
  );
}

class SausageFormRouteArgs {
  const SausageFormRouteArgs({
    required this.sausage,
    this.key,
  });

  final _i4.Option<_i5.SausageModel> sausage;

  final _i6.Key? key;

  @override
  String toString() {
    return 'SausageFormRouteArgs{sausage: $sausage, key: $key}';
  }
}
