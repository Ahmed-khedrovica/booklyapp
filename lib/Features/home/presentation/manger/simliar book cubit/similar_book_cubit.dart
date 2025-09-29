import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBookFailure(failure.errMessage));
      },
      (books) {
        emit(SimilarBookSuccess(books));
      },
    );
  }
}
