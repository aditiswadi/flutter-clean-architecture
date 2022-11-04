// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:news_app/features/show_news/presentation/pages/home_page.dart';
import 'package:news_app/features/show_news/presentation/pages/news_views_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: NewsViewPage),
  ],
)
class $AppRouter {}
