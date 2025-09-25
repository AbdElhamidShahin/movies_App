import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/styles.dart';

class CustomItemCaracter extends StatelessWidget {
  const CustomItemCaracter({super.key, required this.imageUrl, required this.title});
final String imageUrl;
final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 120,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 3.3 / 4,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),

          SizedBox(height: 8,),

          Text(title, style: Styles.textStyle18,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
