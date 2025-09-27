import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/Cubits/CaracterCubit/CaracterCubit.dart';
import 'package:movies_app/presentation/Cubits/CaracterCubit/CaracterState.dart';
import 'package:movies_app/presentation/widgets/CustomErrorWidget.dart';
import 'package:movies_app/presentation/widgets/CustomLoadingWidget.dart';

import 'CustomItemCaracter.dart';

class CustomListVeiwCaracter extends StatelessWidget {
  const CustomListVeiwCaracter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,

      child: BlocBuilder<CaracterCubit, CaracterState>(
        builder: (BuildContext context, state) {
          if (state is CaracterStateSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.cast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final actor = state.cast[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomItemCaracter(
                    imageUrl: actor.profilePath != null
                        ? "https://image.tmdb.org/t/p/w500${actor.profilePath}"
                        : "https://tse2.mm.bing.net/th/id/OIP.9XQh1_or4tR3L8RK5AdKdQHaLG?rs=1&pid=ImgDetMain&o=7&rm=3",
                    title: "${actor.name}",
                  ),
                );
              },
            );
          } else if (state is CaracterStateFalier) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return CustomLoadingWidget();
          }
        },
      ),
    );
  }
}
