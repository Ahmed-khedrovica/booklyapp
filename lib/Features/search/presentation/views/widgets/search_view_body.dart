import 'package:booklyapp/Features/search/presentation/manger/search%20cubit/searc_cubit.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(
          onChanged: (query) {
            if (query.isNotEmpty) {
              BlocProvider.of<SearchCubit>(context).searchBooks(query);
            }
          },
        ),
        SizedBox(height: 16),
        Text('Search Result', style: Styles.textStyle18),
        SizedBox(height: 16),
        const Expanded(child: SearchResultListView()),
      ],
    );
  }
}
