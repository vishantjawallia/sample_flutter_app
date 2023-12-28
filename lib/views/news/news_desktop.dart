part of news_view;

// ignore: must_be_immutable
class _NewsDesktop extends StatelessWidget {
  final NewsViewModel viewModel;

  _NewsDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsDesktop')),
    );
  }
}