part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure(this.errMessage);
}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newestBooks;

  NewestBooksSuccess(this.newestBooks);
}
