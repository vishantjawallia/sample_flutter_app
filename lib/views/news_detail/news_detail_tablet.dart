part of news_detail_view;

// ignore: must_be_immutable
class _NewsDetailTablet extends StatelessWidget {
  final NewsDetailViewModel viewModel;

  _NewsDetailTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsDetailTablet')),
    );
  }
}