library news_view;

import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'news_view_model.dart';
import 'widgets/new_title_box.dart';

part 'news_mobile.dart';
part 'news_tablet.dart';
part 'news_desktop.dart';

// ignore: must_be_immutable
class NewsView extends StatelessWidget {
  static const routeName = '/news';

  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsViewModel>.reactive(
      viewModelBuilder: () => NewsViewModel(),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _NewsMobile(viewModel),
          desktop: (_) => _NewsMobile(viewModel),
          tablet: (_) => _NewsMobile(viewModel),
        );
      },
    );
  }
}
