import 'package:flutter/material.dart';

import '../widgets/CustomAppBarHome.dart';
import '../widgets/ListVeiwPopular.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBarHome(),
          ListVeiwPopular()
        ],
      ),
    );
  }
}
