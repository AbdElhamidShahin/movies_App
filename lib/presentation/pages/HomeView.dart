import 'package:flutter/material.dart';
import '../../core/constants/styles.dart';
import '../widgets/CustomAppBarHome.dart';
import '../widgets/CustomTopRatingListView.dart';
import '../widgets/ListVeiwPopular.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomAppBarHome(),
                ),
                SizedBox(height: 16),
                ListVeiwPopular(),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Popular", style: Styles.textStyle24),
                ),
                SizedBox(height: 24),
                CustomTopRatingListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
