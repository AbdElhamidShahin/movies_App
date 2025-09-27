import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/presentation/Cubits/MociesSearchCubit/MoviesSearchCubit.dart';
import 'package:movies_app/presentation/Cubits/MociesSearchCubit/MoviesSearchState.dart';
import 'package:movies_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:movies_app/presentation/widgets/CustomLoadingWidget.dart';

import '../../core/constants/Strings.dart';
import 'CustomSearchListItem.dart' show CustomSearchListItem;

class CustomSearchListVeiw extends StatelessWidget {
  const CustomSearchListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesSearchCubit, MoviesSearchrState>(
      builder: (BuildContext context, state) {
        if (state is MoviesSearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.go(KdetailsScreen, extra: state.movies[index]);
                },
                child: CustomSearchListItem(moviesModel: state.movies[index]),
              );
            },
          );
        } else if (state is MoviesSearchFalier) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingWidget();
        }
      },
    );
  }
}
