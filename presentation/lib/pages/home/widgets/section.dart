import 'package:flutter/material.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';
import 'package:presentation/resources/vectors.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({Key? key, required this.sectionTitle}) : super(key: key);

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            sectionTitle,
            style: TextStyles.sourceSansPro20w600.copyWith(color: CustomColor.blueFantastic),
          ),
          Spacer(),
          Text(
            'See All',
            style: TextStyles.sourceSansPro16w600.copyWith(color: CustomColor.pastelRed),
          ),
        ],
      ),
    );
  }
}
