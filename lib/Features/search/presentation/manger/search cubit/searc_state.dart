part of 'searc_cubit.dart';

@immutable
sealed class SearchState extends Equatable{
  @override
  List<Object?> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure(this.errMessage);
  
  @override
  List<Object?> get props => [errMessage];
}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);
  
  @override
  List<Object?> get props => [books];
}
