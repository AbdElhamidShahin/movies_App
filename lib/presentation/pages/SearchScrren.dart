
import 'package:flutter/material.dart';

import '../../core/constants/styles.dart';
import '../widgets/CustomSearchListVeiw.dart';
import '../widgets/CustomTextFeild.dart' show CustomTextFeild;

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(),
            ),
            SizedBox(height: 16,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomSearchListVeiw(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}