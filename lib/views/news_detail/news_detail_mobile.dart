part of news_detail_view;

// ignore: must_be_immutable
class _NewsDetailMobile extends StatelessWidget {
  final NewsDetailViewModel model;

  const _NewsDetailMobile(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const BackButton(color: Colors.white),
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
          : model.article == null
              ? Center(
                  child: Text(
                    'Not Found !',
                    style: Get.textTheme.titleLarge!.copyWith(color: Colors.grey),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          model.article?.urlToImage ?? 'https://i.ytimg.com/vi/FrFiECIXIqs/maxresdefault.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                model.article?.source?.name ?? 'YouTube',
                                style: Get.textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              model.article?.title ?? 'not found',
                              style: Get.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 14),
                            Text(
                              'Description:-',
                              style: Get.textTheme.titleMedium!.copyWith(color: Colors.black54, fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              model.article?.description ?? 'not found',
                              style: Get.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              'Content:-',
                              style: Get.textTheme.titleMedium!.copyWith(color: Colors.black54, fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              model.article?.content ?? 'not found',
                              style: Get.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
