import 'package:flutter/material.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';
import 'package:presentation/resources/vectors.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Assets.logo,
          const SizedBox(width: 24),
          Text(
            'Berita',
            style: TextStyles.sourceSansPro24w600.copyWith(color: CustomColor.tristesse),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), color: CustomColor.morningShine),
            child: Container(margin: const EdgeInsets.all(8), child: Assets.bell),
          )
        ],
      ),
    );
  }
}
