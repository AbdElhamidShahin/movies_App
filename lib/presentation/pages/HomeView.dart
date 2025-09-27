import 'package:flutter/material.dart';
import '../../core/constants/AppColors.dart';
import '../../core/constants/styles.dart';
import '../widgets/CustomAppBarHome.dart';
import '../widgets/CustomTopRatingListView.dart';
import '../widgets/ListVeiwPopular.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: backgroundColor,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            /// AppBar
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomAppBarHome(),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 16)),

            /// Popular horizontal list
            SliverToBoxAdapter(child: ListVeiwPopular()),

            SliverToBoxAdapter(child: SizedBox(height: 8)),

            /// "Popular" text
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("Popular", style: Styles.textStyle24),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 24)),

            /// Top rating list
            SliverToBoxAdapter(child: CustomTopRatingListView()),
          ],
        ),
      ),
    );
  }
}
