import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/styles.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

import '../../core/constants/Strings.dart';

class CustomListVeiwItem extends StatelessWidget {
  CustomListVeiwItem({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(KdetailsScreen);
      },
      child: SizedBox(
        width: 180,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Image.network(
                  moviesModel.results!.posterPath ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Text(
              "Inception",
              style: Styles.textStyle18,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              "2008",
              style: Styles.textStyle16.copyWith(color: Colors.grey),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
