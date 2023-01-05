import 'dart:async';

import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:domain/modules/home/articles/usecase/get_articles_usecase.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';

class HomeController extends GetxController {
  final _getArticlesUseCase = GetIt.instance.get<GetArticlesUseCase>();

  RxInt selectedIndex = 0.obs;

  RxList<ListItem> items = RxList();
  int pageNumber = 1;
  int pageLimit = 10;
  RxBool loading = false.obs;
  RxBool pageLoaded = false.obs;
  RxBool allLoaded = false.obs;
  StreamSubscription? subscription;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  void getData() {
    subscription?.cancel();
    List<ArticleEntity> featuredList = [];
    List<ArticleEntity> scrollList = [];

    subscription = _getArticlesUseCase(pageNumber, pageLimit).listen((value) {
      value.fold((left) => null, (articles) {
        // print('right');
        print('articles.length ${articles.length}');
        articles.forEach((article) {
          print('map');
          if (article.isFeatured) {
            //  print('articleFeatured ${article.title}');
            featuredList.add(article);
          } else {
            //  print('articleSimple ${article.title}');
            scrollList.add(article);
          }
        });
        print('listen ${featuredList.length}');
        items.value = [
          TopBarItem(),
          SearchBarItem(),
          SectionItem(title: 'Featured'),
          CarouselItem(articles: featuredList),
          SectionItem(title: 'News'),
        ];
      });
      for (var el in scrollList) {
        items.add(ArticleItem(articleEntity: el));
      }
    });
    // List<Goal> goals = await ApiService().getGoals();
    // CarouselItem carouselItem = CarouselItem(goals: goals);
  }

  @override
  void onClose() {
    subscription?.cancel();
    super.onClose();
  }
}

class TopBarItem implements ListItem {
  TopBarItem();
}

class SearchBarItem implements ListItem {
  SearchBarItem();
}

class CarouselItem implements ListItem {
  List<ArticleEntity> articles;

  CarouselItem({required this.articles});
}

class SectionItem implements ListItem {
  String title;

  SectionItem({required this.title});
}

class CategoriesItem implements ListItem {
  CategoriesItem();
}

class ArticleItem implements ListItem {
  ArticleEntity articleEntity;

  ArticleItem({required this.articleEntity});
}

abstract class ListItem {}
