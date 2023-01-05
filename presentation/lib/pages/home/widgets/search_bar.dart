import 'package:flutter/material.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';
import 'package:presentation/resources/vectors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)), color: CustomColor.whiteSolid),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 5,left: 24),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyles.sourceSansPro14w400.copyWith(color: CustomColor.tristesse),
                  suffixIcon: Container(
                    padding: const EdgeInsets.only(top: 11, bottom: 11, right: 27),
                    width: 18,
                    child: Assets.search,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 24),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)), color: CustomColor.morningShine),
            child: Container(margin: const EdgeInsets.all(8), child: Assets.filter),
          )
        ],
      ),
    );
  }
}
