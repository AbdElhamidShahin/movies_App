import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/Cubits/MoviesPopularCubit/MoviesPopularCubit.dart';
import 'package:movies_app/presentation/Cubits/MoviesPopularCubit/MoviesPopularState.dart';
import 'package:movies_app/presentation/widgets/CustomErrorWidget.dart';

import 'CustomListVeiwItem.dart';
import 'CustomLoadingWidget.dart';

class ListVeiwPopular extends StatelessWidget {
  const ListVeiwPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .37,

      child: BlocBuilder<MoviesPopularCubit, MoviesPopularState>(
        builder: (BuildContext context, state) {
          if (state is MoviesPopularSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomListVeiwItem(moviesModel: state.movies[index]),
                );
              },
            );
          } else if (state is MoviesPopularFalier) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return CustomLoadingWidget();
          }
        },
      ),
    );
  }
}
