import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:presentation/resources/custom_colors.dart';

import 'search_bar.dart';
import 'top_bar.dart';

class HomeHeader extends SliverPersistentHeaderDelegate {
  HomeHeader({
    required this.minExtent,
    required this.maxExtent,
  });

  @override
  final double minExtent;
  @override
  final double maxExtent;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
        color: CustomColor.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 32),
            child: TopBar(),
          ),
          SearchBar(),
        ],
      ),
    );
  }
  double titleOpacity(double shrinkOffset) {
    // simple formula: fade out text as soon as shrinkOffset > 0
    return 1.0 - max(0.0, shrinkOffset) / maxExtent;
    // more complex formula: starts fading out text when shrinkOffset > minExtent
    //return 1.0 - max(0.0, (shrinkOffset - minExtent)) / (maxExtent - minExtent);
  }
  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
