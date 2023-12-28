import 'dart:developer';

import 'package:sample_flutter_app/api/api_reference.dart';
import 'package:sample_flutter_app/config/config.dart';

import '../../../api/url.dart';
import '../../../models/top_headlines.dart';

mixin class NewsService {
  Future<List<Articles>> getHeadLines() async {
    List<Articles> data = [];
    final res = await ApiReference.apiGet("${Url.topHeadlines}?country=in&apiKey=$API_KEY");
    if (res != null) {
      final value = TopHeadlines.fromJson(res);
      if (value.status == "ok") {
        data = value.articles!.toList();
      }
    }
    return data;
  }
}
