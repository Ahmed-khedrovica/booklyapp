import 'package:booklyapp/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(padding: padding, child: SearchViewBody()),
      ),
    );
  }
}
