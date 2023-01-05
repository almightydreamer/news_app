import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:presentation/pages/home/widgets/article.dart';
import 'package:presentation/pages/home/widgets/persistent_header.dart';
import 'package:presentation/pages/home/widgets/search_bar.dart';
import 'package:presentation/pages/home/widgets/top_bar.dart';
import 'package:presentation/resources/custom_colors.dart';

import 'controllers/home_controller.dart';
import 'widgets/articles_carousel.dart';
import 'widgets/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

ScrollController _scrollController = ScrollController();
ScrollDirection _lastScrollDirection = ScrollDirection.forward;

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
    final HomeController homeController = Get.find();
    print('getData');
    homeController.getData();
    print('gotData');
    _scrollController.addListener(() {
      if (_lastScrollDirection != _scrollController.position.userScrollDirection) {
        _lastScrollDirection = _scrollController.position.userScrollDirection;
      }
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent &&
          !homeController.loading.value &&
          !homeController.allLoaded.value) {
        //homeController.getArticles();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        color: CustomColor.white,
        child: Obx(
          () => CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPersistentHeader(delegate: HomeHeader(minExtent: 180, maxExtent: 180),
              pinned: false,
              floating: true,),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                    var item = homeController.items[index];
                    if (item is SectionItem) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: SectionWidget(sectionTitle: item.title),
                      );
                    }
                    if (item is CarouselItem) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ArticlesCarouselWidget(articles: item.articles),
                      );
                    }
                    if (item is ArticleItem) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          child: ArticleWidget(article: item.articleEntity));
                    }

                    // if (item is TopBarItem) {
                    //   return Padding(padding: const EdgeInsets.only(right: 16, top: 6), child: TopBar());
                    // }
                    // if (item is SearchBarItem) {
                    //   return Padding(padding: const EdgeInsets.only(right: 16, top: 6), child: SearchBar());
                    // }
                    if (item is CategoriesItem) {
                      return Padding(padding: const EdgeInsets.only(right: 16, top: 6), child: SearchBar());
                    }

                    return Container();
                  },
                  childCount: homeController.items.length,),

              ),
              if (homeController.loading.value) ...[
                const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 40), child: Center(child: CircularProgressIndicator()))
              ],
            ],
          ),
        ),
      ),
    );
  }
}
