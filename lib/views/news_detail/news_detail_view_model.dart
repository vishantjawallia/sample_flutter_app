import 'package:stacked/stacked.dart';

import 'services/news_services.dart';

class NewsDetailViewModel extends BaseViewModel implements NewsSetailServices {
  NewsDetailViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }
}
