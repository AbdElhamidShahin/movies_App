import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

import '../../core/constants/Strings.dart';
import '../../core/constants/styles.dart';

class CustomSearchListItem extends StatelessWidget {
  const CustomSearchListItem({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: SizedBox(
        height: 135,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://image.tmdb.org/t/p/w500${moviesModel.posterPath}",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "${moviesModel.title}",
                      style: Styles.textStyle24.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: .6,
                        child: Text(
                          (moviesModel.releaseDate != null && moviesModel.releaseDate!.length >= 4)
                              ? moviesModel.releaseDate!.substring(0, 4)
                              : "N/A", // لو مفيش داتا
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
