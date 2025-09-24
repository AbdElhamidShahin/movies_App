import 'package:flutter/material.dart';

import 'CustomListVeiwItem.dart';

class CustomTopRatingListView extends StatelessWidget {
  const CustomTopRatingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .37,

      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomListVeiwItem(),
          );
        },
      ),
    );
  }
}
