import 'package:booklyapp/Features/home/presentation/manger/simliar%20book%20cubit/similar_book_cubit.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.only(right: 4, left: 4, top: 4),
                  child: CustomBookImage(
                    imageUrl:
                    state.books[index].volumeInfo.imageLinks.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if(state is SimilarBookFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else{
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
