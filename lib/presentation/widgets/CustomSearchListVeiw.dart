import 'package:flutter/material.dart';

import 'CustomSearchListItem.dart' show CustomSearchListItem;

class CustomSearchListVeiw extends StatelessWidget {
  const CustomSearchListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomSearchListItem();
      },
    );
  }
}
