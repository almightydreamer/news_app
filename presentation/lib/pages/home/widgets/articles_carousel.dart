import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:presentation/pages/article_details/article_details.dart';
import 'articles_carousel_widgets/article.dart';

class ArticlesCarouselWidget extends StatelessWidget {
  const ArticlesCarouselWidget({super.key, required this.articles});

  final List<ArticleEntity> articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 324,
      child: PageView.builder(
        allowImplicitScrolling: true,
        physics: const PageScrollPhysics(parent: BouncingScrollPhysics()),
        controller: PageController(viewportFraction: 0.8),
        pageSnapping: true,
        padEnds: false,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          var item = articles[index];
          return Center(
            child: GestureDetector(
              onTap: (){PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: ArticleDetailsPage(article: item),
                withNavBar: false,
              );},
              child: ArticleWidget(
                cover: articles[index].image,
                articleTitle: articles[index].title,
              ),
            ),
          );
        },
      ),
    );
    // return Obx(()=>Text(homeController.goals.toString()));
    //return SizedBox(height: 144, child: Column(children: [Image.asset('name')],),);
  }
}
