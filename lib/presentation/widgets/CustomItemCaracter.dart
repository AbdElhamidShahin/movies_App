import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/styles.dart';

class CustomItemCaracter extends StatelessWidget {
  const CustomItemCaracter({super.key});

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
              child: Image.asset("assets/images/test.jpeg", fit: BoxFit.fill),
            ),
          ),

          Text("name", style: Styles.textStyle18),
        ],
      ),
    );
  }
}
