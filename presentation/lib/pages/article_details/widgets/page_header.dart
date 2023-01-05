import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/vectors.dart';

class PageHeader extends SliverPersistentHeaderDelegate {
  PageHeader({
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
        height: 150,
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          color: CustomColor.white,
        ),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Assets.backPage),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)), color: CustomColor.morningShine),
              child: Container(margin: const EdgeInsets.all(8), child: Assets.share),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)), color: CustomColor.morningShine),
              child: Container(margin: const EdgeInsets.all(8), child: Assets.bookmark),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)), color: CustomColor.morningShine),
              child: Container(margin: const EdgeInsets.all(8), child: Assets.dots),
            )
          ],
        ));
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
