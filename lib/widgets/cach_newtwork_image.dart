import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
   CachedImage({super.key, required this.url});
  String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error,size: 50),
      ),
    );
  }
}
