import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/styles.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Movies", style: Styles.textStyle24),
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 32)),
      ],
    );
  }
}
