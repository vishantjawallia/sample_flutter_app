

import 'package:sample_flutter_app/api/api_reference.dart';
import 'package:sample_flutter_app/models/top_headlines.dart';

import '../../../api/url.dart';
import '../../../config/config.dart';

mixin class NewsDetailService {
  Future<Articles?> getSingleArticle(String? id) async {

    final res = await ApiReference.apiGet("${Url.topHeadlines}?country=in&q=$id&apiKey=$API_KEY");
    if (res != null) {
      final value = TopHeadlines.fromJson(res);
      if (value.status == "ok") {
        final list = value.articles!.toList();
        if (list.isNotEmpty) return list.first;
      }
    }
    return null;
  }
}
