part of 'similar_book_cubit.dart';

@immutable
sealed class SimilarBookState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookFailure extends SimilarBookState {
  final String errMessage;

  SimilarBookFailure(this.errMessage);
}

final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;

  SimilarBookSuccess(this.books);
}
