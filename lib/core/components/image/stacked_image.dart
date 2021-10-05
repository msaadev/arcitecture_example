import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

import 'cahce_image.dart';

class StackedImage extends StatelessWidget {
  final String link, label;

  const StackedImage({Key? key, required this.link, required this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16,bottom: 12),
      child: AspectRatio(
          aspectRatio: 2.14,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                  borderRadius: 12.customRadius, child: CahceImage(link: link)),
              Positioned(
                  left: 16,
                  bottom: 16,
                  child: Text(
                    label,
                    style: context.textTheme.headline6!
                        .copyWith(color: Colors.white),
                  ))
            ],
          )),
    );
  }
}
