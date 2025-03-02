import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_icon_error.dart';
import 'package:sky_high/features/weather/presentation/views/widgets/custom_loading_image_in_cached.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.percentToImage,
    required this.percentToIconError,
    required this.percentToImageLoading,
    required this.aspectRatio,
  });
  final String imageUrl;
  final double percentToImage;
  final double percentToIconError;
  final double percentToImageLoading;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * percentToImage,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget:
            (context, url, error) =>
                CustomIconError(percentToIconError: percentToIconError),
        placeholder:
            (context, url) => CustomLoadingImageInCached(
              percent: percentToImageLoading,
              aspectRatio: aspectRatio,
            ),
        fit: BoxFit.fill,
      ),
    );
  }
}
