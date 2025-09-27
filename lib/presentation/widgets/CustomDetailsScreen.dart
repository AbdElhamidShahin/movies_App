import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/styles.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';
import 'package:movies_app/presentation/Cubits/CaracterCubit/CaracterCubit.dart';

import '../../core/constants/AppColors.dart';
import '../../core/constants/Strings.dart';
import 'CustomListVeiwCaracter.dart';
import 'CustomTextButtonDetails.dart';

class CustomDetailsScreen extends StatefulWidget {
  const CustomDetailsScreen({super.key, required this.moviesModel});
  final MoviesModel moviesModel;

  @override
  State<CustomDetailsScreen> createState() => _CustomDetailsScreenState();
}

class _CustomDetailsScreenState extends State<CustomDetailsScreen> {
  @override
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CaracterCubit>(
        context,
      ).fetchCaracterMovies(widget.moviesModel.id!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: backgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Details", style: Styles.textStyle30),
                   Spacer(), IconButton(
                      onPressed: () {
                        context.go(KhomeVeiw);
                      },
                      icon: Icon(Icons.arrow_forward,size: 28,),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 3.5 / 4,
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500${widget.moviesModel.posterPath}",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 24),

                Text("${widget.moviesModel.title}", style: Styles.textStyle24),
                SizedBox(height: 24),
                Row(
                  children: [
                    Opacity(
                      opacity: .7,

                      child: Text(
                        "${widget.moviesModel.releaseDate!.substring(0, 4)}",
                        style: Styles.textStyle20,
                      ),
                    ),
                    Spacer(),
                    Opacity(
                      opacity: .7,

                      child: Text(
                        "${widget.moviesModel.voteAverage!.toStringAsFixed(1)}",
                        style: Styles.textStyle20,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 24),

                CustomTextButtonDetails(onPressed: () {}),
                SizedBox(height: 24),

                Text(
                  "${widget.moviesModel.overview}",

                  style: Styles.textStyle16.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 24),
                Text("Cast", style: Styles.textStyle24),
                SizedBox(height: 24),

                CustomListVeiwCaracter(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
