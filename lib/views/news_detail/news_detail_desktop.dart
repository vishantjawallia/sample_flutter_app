part of news_detail_view;

// ignore: must_be_immutable
class _NewsDetailDesktop extends StatelessWidget {
  final NewsDetailViewModel viewModel;

  _NewsDetailDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsDetailDesktop')),
    );
  }
}