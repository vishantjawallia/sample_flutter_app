library news_detail_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'news_detail_view_model.dart';

part 'news_detail_mobile.dart';
part 'news_detail_tablet.dart';
part 'news_detail_desktop.dart';

// ignore: must_be_immutable
class NewsDetailView extends StatelessWidget {
  static const routeName = '/news_detail';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsDetailViewModel>.reactive(
      viewModelBuilder: () => NewsDetailViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _NewsDetailMobile(viewModel),
          desktop: _NewsDetailMobile(viewModel),
          tablet: _NewsDetailMobile(viewModel),

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _NewsDetailDesktop(viewModel),
          //tablet: _NewsDetailTablet(viewModel),  
        );
      }
    );
  }
}