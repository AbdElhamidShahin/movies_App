import 'package:flutter/material.dart';

import 'CustomItemCaracter.dart';

class CustomListVeiwCaracter extends StatelessWidget {
  const CustomListVeiwCaracter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,

      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomItemCaracter(),
          );
        },
      ),
    );
  }
}
