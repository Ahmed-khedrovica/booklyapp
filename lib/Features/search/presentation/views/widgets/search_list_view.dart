import 'package:booklyapp/Features/search/presentation/manger/search%20cubit/searc_cubit.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_result_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SearchResultItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return CustomLoadingIndicator();
        } else {
          return Center(
            child: Text(
              'Start searching for books',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
          );
        }
      },
    );
  }
}
