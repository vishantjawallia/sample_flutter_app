part of news_view;

// ignore: must_be_immutable
class _NewsMobile extends StatelessWidget {
  final NewsViewModel model;

  const _NewsMobile(
    this.model,
  );

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
      body: model.isBusy
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
            )
          : model.articles.isEmpty
              ? Center(
                  child: Text(
                    'Not Found !',
                    style: Get.textTheme.titleLarge!.copyWith(color: Colors.grey),
                  ),
                )
              : ListView.builder(
                  itemCount: model.articles.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                  itemBuilder: (context, i) => NewsTileBox(
                    title: model.articles[i].title,
                    dsc: model.articles[i].description,
                    img: model.articles[i].urlToImage,
                    source: model.articles[i].source?.name,
                    tileTap: model.tileTapHandler,
                  ),
                ),
    );
  }
}
