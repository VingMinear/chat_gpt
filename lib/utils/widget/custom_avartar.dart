import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
    required this.size,
    this.imgUrl,
    this.imgPath,
  });
  final double size;
  final String? imgUrl;
  final String? imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: imgPath == null
            ? DecorationImage(
                image: NetworkImage(imgUrl!),
              )
            : DecorationImage(
                image: AssetImage(imgPath!),
              ),
      ),
    );
  }
}
