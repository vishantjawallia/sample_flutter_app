import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/news/news_view.dart';
import '../views/news_detail/news_detail_view.dart';
import '../views/splash/splash_view.dart';

class Routes {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(name: SplashView.routeName, page: () => const SplashView()),
    GetPage(name: NewsView.routeName, page: () => NewsView()),
    GetPage(name: NewsDetailView.routeName, page: () => NewsDetailView()),
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashView.routeName: (p0) => const SplashView(),
    NewsView.routeName: (p0) => NewsView(),
    NewsDetailView.routeName: (p0) => NewsDetailView(),
  };
}
