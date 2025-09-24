import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/styles.dart';

import '../../core/constants/Strings.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Movies", style: Styles.textStyle24),
        IconButton(onPressed: () { context.go(KsearchView);}, icon: Icon(Icons.search, size: 32)),
      ],
    );
  }
}
