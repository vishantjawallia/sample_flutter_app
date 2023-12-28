import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsTileBox extends StatelessWidget {
  final String? title;
  final String? dsc;
  final String? img;
  final String? source;
  final void Function(String? value)? tileTap;
  const NewsTileBox({
    required this.title,
    required this.dsc,
    required this.img,
    required this.source,
    required this.tileTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 5,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => tileTap!(title),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.network(
                  img ?? 'https://i.ytimg.com/vi/FrFiECIXIqs/maxresdefault.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? 'WILD OVERTIME ENDING Grizzlies vs Pelicans | December 26, 2023 - NBA',
                      style: Get.textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      dsc ?? 'The Memphis Grizzlies defeated the New Orleans Pelicans, 116-115, in overtime...... ',
                      style: Get.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        source ?? 'not found',
                        style: Get.textTheme.bodyLarge!.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
