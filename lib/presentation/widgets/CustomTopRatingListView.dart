import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/Cubits/MoviesTopRetingCubit/MoviesTopRatingCubit.dart';
import 'package:movies_app/presentation/Cubits/MoviesTopRetingCubit/MoviesTopRatingState.dart';
import 'package:movies_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:movies_app/presentation/widgets/CustomLoadingWidget.dart';

import 'CustomListVeiwItem.dart';

class CustomTopRatingListView extends StatelessWidget {
  const CustomTopRatingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .37,

      child: BlocBuilder<MoviesTopRatingCubit, MoviesTopRatingState>(
        builder: (BuildContext context, state) {
          if (state is MoviesTopRatingSuccess) {
            return ListView.builder(
              itemCount: 5,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomListVeiwItem(moviesModel: state.movies[index]),
                );
              },
            );
          } else if (state is MoviesTopRatingFalier) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return CustomLoadingWidget();
          }
        },
      ),
    );
  }
}
