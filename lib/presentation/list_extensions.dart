import 'package:flutter/material.dart';

extension ListExtensions on List<Widget> {
  List<SliverToBoxAdapter> toSlivers() {
    return map((item) => SliverToBoxAdapter(child: item)).toList();
  }
}
