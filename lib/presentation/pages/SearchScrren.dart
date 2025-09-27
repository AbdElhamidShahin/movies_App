import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/Cubits/MociesSearchCubit/MoviesSearchCubit.dart';

import '../widgets/CustomSearchListVeiw.dart';
import '../widgets/CustomTextFeild.dart' show CustomTextFeild;

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    (context).read<MoviesSearchCubit>().fetchSearchMovies(query: "popular");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(
                onPressed: (query) {
                  if (query.isNotEmpty) {
                    context.read<MoviesSearchCubit>().fetchSearchMovies(
                      query: query,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 16),
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
