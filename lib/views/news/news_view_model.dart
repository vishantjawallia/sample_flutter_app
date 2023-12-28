import 'package:stacked/stacked.dart';

import 'services/news_services.dart';

class NewsViewModel extends BaseViewModel implements NewsServices {
  
  NewsViewModel() {
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
