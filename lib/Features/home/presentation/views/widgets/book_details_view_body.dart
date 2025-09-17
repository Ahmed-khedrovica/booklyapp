import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .2,
                ),
                child: const CustomBookItem(),
              ),
              SizedBox(height: 26),
              Text('The Jungle Book',
                  maxLines: 1,
                  style: Styles.textStyle20),
              SizedBox(height: 6),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              BookRating(mainAxisAlignment: MainAxisAlignment.center),
              SizedBox(height: 20,),
              const BooksAction(),
              Expanded(child: SizedBox(height: 50,)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like',
                  style: Styles.textStyle14,
                ),
              ),
              SizedBox(height: 10,),
              SimilarBooksListView(),
            ],
          ),
        )
      ],
    );

  }
}

