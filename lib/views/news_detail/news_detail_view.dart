library news_detail_view;

import 'package:get/get.dart';
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
  final String? id;

  const NewsDetailView({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsDetailViewModel>.reactive(
      viewModelBuilder: () => NewsDetailViewModel(id),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _NewsDetailMobile(viewModel),
          desktop: (_) => _NewsDetailMobile(viewModel),
          tablet: (_) => _NewsDetailMobile(viewModel),
        );
      },
    );
  }
}
