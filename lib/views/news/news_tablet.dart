part of news_view;

// ignore: must_be_immutable
class _NewsTablet extends StatelessWidget {
  final NewsViewModel viewModel;

  _NewsTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('NewsTablet')),
    );
  }
}
