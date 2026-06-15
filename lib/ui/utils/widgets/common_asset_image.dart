import 'package:flutter/material.dart';

class CommonAssetImage extends StatelessWidget {
  final String name;
  final double? height;
  final double? width;
  final AlignmentGeometry? alignment;
  final double? scale;
  final BoxFit? fit;

  const CommonAssetImage({super.key, required this.name, this.height, this.width, this.alignment, this.scale, this.fit});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        name,
      height: height,
      width: width,
      alignment: alignment ?? Alignment.center,
      scale: scale,
      fit: fit,
    );
  }
}
