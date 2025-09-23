
import 'package:flutter/material.dart';

class CustomListVeiwItem extends StatelessWidget {
  CustomListVeiwItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.2 / 3.7,
        child: Image.asset(imageUrl, fit: BoxFit.fill),
      ),
    );
  }
}
