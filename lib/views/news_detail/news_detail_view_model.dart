import 'dart:developer';

import 'package:stacked/stacked.dart';

import '../../models/top_headlines.dart';
import 'services/news_service.dart';

class NewsDetailViewModel extends BaseViewModel with NewsDetailService {
  final String? id;

  Articles? article;

  NewsDetailViewModel(this.id) {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    article = null;
    setBusy(true);
    if (id != null) {
      article = await getSingleArticle(id);
      log(article.toString());
    }

    setBusy(false);
    notifyListeners();
  }
}
