import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:flutter/material.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';
import 'package:presentation/resources/vectors.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({Key? key, required this.article}) : super(key: key);

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)), border: Border.all(color: CustomColor.springtimeRain)),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 163,
            child: ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(16),
                ),
                child: Image.network(
                  article.image,
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
                child: Column(
                  children: [
                    Text(
                      article.title,
                      style: TextStyles.sourceSansPro18w600.copyWith(color: CustomColor.blueFantastic),
                      maxLines: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Image.network(article.author.avatarUrl, fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            article.author.name,
                            style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                          ),
                          SizedBox(width: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              border: Border.all(color: CustomColor.pastelRed),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                              child: Text(
                                'andrei',
                                style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.pastelRed),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 4),
                          width: 16,
                          height: 16,
                          child: Assets.thumbUp,
                        ),
                        Text(
                          '133.7k',
                          style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 4),
                          width: 16,
                          height: 16,
                          child: Assets.comment,
                        ),
                        Text(
                          '133.7k',
                          style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: 16,
                          height: 16,
                          child: Assets.bookmark,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
