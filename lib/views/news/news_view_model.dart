import 'dart:developer';

import 'package:get/get.dart';

import 'package:sample_flutter_app/models/top_headlines.dart';
import 'package:sample_flutter_app/views/news_detail/news_detail_view.dart';
import 'package:stacked/stacked.dart';

import 'services/news_service.dart';

class NewsViewModel extends BaseViewModel with NewsService {
  List<Articles> articles = [];

  NewsViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    articles = await getHeadLines();
    log(articles.toString());
    setBusy(false);
    notifyListeners();
  }

  void tileTapHandler(String? value) => Get.to(() => NewsDetailView(id: value));
}
