// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'app_shimmer_content.dart';

class NetworkImageWithShimmer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String url;
  final BorderRadius? borderRadius;
  final Widget? failed;
  final double? width;
  final double? height;

  const NetworkImageWithShimmer({
    super.key,
    this.padding,
    required this.url,
    this.failed,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (ctx, imageProvider) => Container(
        // padding: padding,
        margin: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? AppDecoration.brBtnOther,
          image: DecorationImage(
            image: imageProvider,
            // fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (ctx, url) => AppShimmerContent(
        borderRadius: borderRadius ?? AppDecoration.brBtnOther,
        height: height,
        width: width,
      ),
    );
  }
}
