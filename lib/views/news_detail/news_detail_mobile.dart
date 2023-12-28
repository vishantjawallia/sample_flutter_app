part of news_detail_view;

// ignore: must_be_immutable
class _NewsDetailMobile extends StatelessWidget {
  final NewsDetailViewModel viewModel;

  _NewsDetailMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsDetailMobile')),
    );
  }
}