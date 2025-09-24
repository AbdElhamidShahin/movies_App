import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/styles.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

class CustomListVeiwItem extends StatelessWidget {
  CustomListVeiwItem({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Image.network(
                "https://image.tmdb.org/t/p/w500${moviesModel.posterPath}",
                fit: BoxFit.fill,
              ),
            ),
          ),

          Text(
            "${moviesModel.title}",
            style: Styles.textStyle18,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Text(
            "${moviesModel.releaseDate}",
            style: Styles.textStyle16.copyWith(color: Colors.white70),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
