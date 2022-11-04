// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/show_news/domain/entities/news_info.dart' as _i5;
import '../../features/show_news/presentation/pages/home_page.dart' as _i1;
import '../../features/show_news/presentation/pages/news_views_page.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NewsViewRoute.name: (routeData) {
      final args = routeData.argsAs<NewsViewRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.NewsViewPage(
          key: args.key,
          newsInfo: args.newsInfo,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          NewsViewRoute.name,
          path: '/news-view-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.NewsViewPage]
class NewsViewRoute extends _i3.PageRouteInfo<NewsViewRouteArgs> {
  NewsViewRoute({
    _i4.Key? key,
    required _i5.NewsInfo newsInfo,
  }) : super(
          NewsViewRoute.name,
          path: '/news-view-page',
          args: NewsViewRouteArgs(
            key: key,
            newsInfo: newsInfo,
          ),
        );

  static const String name = 'NewsViewRoute';
}

class NewsViewRouteArgs {
  const NewsViewRouteArgs({
    this.key,
    required this.newsInfo,
  });

  final _i4.Key? key;

  final _i5.NewsInfo newsInfo;

  @override
  String toString() {
    return 'NewsViewRouteArgs{key: $key, newsInfo: $newsInfo}';
  }
}
