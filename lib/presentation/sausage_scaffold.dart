import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class SausageScaffold extends StatelessWidget {
  const SausageScaffold({
    required this.body,
    super.key,
    this.isLoading = false,
    this.appBar = const None(),
    this.bottomNav = const None(),
    this.floatingActionButton = const None(),
    this.backgroundColor = const None(),
    this.floatingButtonActionLocation = const None(),
  });

  final bool isLoading;
  final Option<AppBar> appBar;
  final Widget body;

  final Option<Widget> bottomNav;

  final Option<FloatingActionButton> floatingActionButton;

  final Option<Color> backgroundColor;
  final Option<FloatingActionButtonLocation> floatingButtonActionLocation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: backgroundColor.fold(
            () => Theme.of(context).scaffoldBackgroundColor,
            (a) => a,
          ),
          appBar: appBar.fold(() => null, (a) => a),
          body: body,
          bottomNavigationBar: bottomNav.fold(() => null, (a) => a),
          floatingActionButton: floatingActionButton.fold(() => null, (a) => a),
          floatingActionButtonLocation: floatingButtonActionLocation.fold(
            () => null,
            (a) => a,
          ),
        ),
        if (isLoading) ...[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ],
    );
  }
}
