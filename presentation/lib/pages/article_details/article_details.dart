import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:presentation/resources/custom_colors.dart';
import 'package:presentation/resources/text_styles.dart';
import 'package:presentation/resources/vectors.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'widgets/page_header.dart';

class ArticleDetailsPage extends StatelessWidget {
  ArticleDetailsPage({Key? key, required this.article}) : super(key: key);

  final ArticleEntity article;
  final List<String> tags = ['ebs','abracadabraabracadabra', 'alex','abracadabra', 'ebs', 'alex','abracadabraabracadabra', 'ebs', 'alex'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        color: CustomColor.white,
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: PageHeader(minExtent: 130, maxExtent: 130),
              pinned: false,
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 252,
                  width: 310,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.network(article.image, fit: BoxFit.fitHeight),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    article.title,
                    style: TextStyles.sourceSansPro20w600.copyWith(color: CustomColor.tristesse),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 4),
                      child: SizedBox(width: 16, height: 16, child: Assets.watcher),
                    ),
                    Text(
                      '133.7k',
                      style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 4),
                      child: SizedBox(width: 16, height: 16, child: Assets.thumbUp),
                    ),
                    Text(
                      '133.7k',
                      style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 4),
                      child: SizedBox(width: 16, height: 16, child: Assets.comment),
                    ),
                    Text(
                      '133.7k',
                      style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                          child: Image.network(article.author.avatarUrl, fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Text(
                              article.author.name,
                              style: TextStyles.sourceSansPro14w600.copyWith(color: CustomColor.pastelRed),
                            ),
                            Text(
                              timeago.format(article.createdAt),
                              style: TextStyles.sourceSansPro12w400,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                          color: CustomColor.pastelRed,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 8),
                              child: Assets.follow,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
                              child: Text(
                                'Follow',
                                style: TextStyles.sourceSansPro14w600.copyWith(color: CustomColor.white),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    article.content,
                    style: TextStyles.sourceSansPro12w400.copyWith(color: CustomColor.tristesse),
                  ),
                ),
                Tags(
                  itemCount: article.tags.length,
                  alignment: WrapAlignment.start,
                  itemBuilder: (int index) {
                    final item = article.tags[index];
                    return ItemTags(
                      activeColor: CustomColor.white,
                      textColor: CustomColor.pastelRed,
                      textActiveColor: CustomColor.pastelRed,
                      color: CustomColor.white,
                      border: Border.all(color: CustomColor.pastelRed),
                      key: Key(index.toString()),
                      index: index,
                      title: '#$item',
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 16),
                  child: Row(
                    children: [
                      Text(
                        'Is this post helpful?',
                        style: TextStyles.sourceSansPro20w600.copyWith(
                          color: CustomColor.tristesse,
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        width: 16,
                        height: 16,
                        child: Assets.thumbUp,
                      ),
                      Text(
                        '133.7',
                        style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 4),
                        width: 16,
                        height: 16,
                        child: Assets.thumbDown,
                      ),
                      Text(
                        '133.7',
                        style: TextStyles.sourceSansPro10w600.copyWith(color: CustomColor.blueFantastic),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.springtimeRain),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          'Comments',
                          style: TextStyles.sourceSansPro14w600.copyWith(
                            color: CustomColor.blueFantastic,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '133.7k',
                          style: TextStyles.sourceSansPro14w600.copyWith(color: CustomColor.pastelRed),
                        ),
                        Spacer(),
                        Container(width: 16, height: 16, child: Assets.expand)
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                              child: Image.network(
                                  'https://scontent.fkiv8-1.fna.fbcdn.net/v/t39.30808-6/286916487_2083688761792693_9'
                                      '51977198350265013_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=174925&_nc_o'
                                      'hc=N0EbLdagw1UAX_g0qJX&_nc_ht=scontent.fkiv8-1.fna&oh=00_AfAuYc7koFD2UdoI0ZK'
                                      '5MtsYI_37cYRYzryC57OBtB__ZQ&oe=63A92656',
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(color: CustomColor.springtimeRain),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 24),
                                  border: InputBorder.none,
                                  hintText: 'Add a comment',
                                  hintStyle: TextStyles.sourceSansPro14w600.copyWith(color: CustomColor.springtimeRain),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
