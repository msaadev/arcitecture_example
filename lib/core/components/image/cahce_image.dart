import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CahceImage extends StatelessWidget {
  final String link;

  const CahceImage({Key? key, required this.link}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: link,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: CircularProgressIndicator(value: downloadProgress.progress)),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
