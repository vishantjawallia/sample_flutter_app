part of news_view;

// ignore: must_be_immutable
class _NewsMobile extends StatelessWidget {
  final NewsViewModel viewModel;

  _NewsMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'News Headline',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        itemBuilder: (context, index) {
          return const NewsTileBox();
        },
      ),
    );
  }
}
