import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/search_repo.dart';

part 'searc_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> searchBooks(String query) async {
    emit(SearchLoading());

    var result = await searchRepo.searchBooks(query);
    result.fold(
          (failure) {
        emit(SearchFailure(failure.errMessage));
      },
          (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
