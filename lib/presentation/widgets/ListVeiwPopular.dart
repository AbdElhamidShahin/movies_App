import 'package:flutter/material.dart';

import 'CustomListVeiwItem.dart';

class ListVeiwPopular extends StatelessWidget {
  const ListVeiwPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomListVeiwItem(imageUrl: 'assets/images/test.jpeg'),
          );
        },
      ),
    );
  }
}
