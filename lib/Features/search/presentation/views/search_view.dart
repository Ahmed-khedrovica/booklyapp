import 'package:booklyapp/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(padding: padding, child: const SearchViewBody()),
      ),
    );
  }
}
