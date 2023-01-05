import 'package:flutter/material.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';

class ArticleWidget extends StatelessWidget {
  ArticleWidget({super.key, required this.cover, required this.articleTitle});

  final String articleTitle;
  final String cover;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 252,
            width: 310,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(cover, fit: BoxFit.fitHeight))),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 12, bottom: 24, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 12),
                  child: Text(
                    articleTitle,
                    style: TextStyles.sourceSansPro20w600.copyWith(color: CustomColor.white, shadows: [Shadow(color: Colors.black,blurRadius: 15)]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 8,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    color: CustomColor.orangeTeaRose,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Text(
                        'Read Now',
                        style: TextStyles.sourceSansPro14w600.copyWith(color: CustomColor.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
