part of 'all_books_cubit.dart';

abstract class AllBooksState extends Equatable {
  const AllBooksState();

  @override
  List<Object> get props => [];
}

class AllBooksInitial extends AllBooksState {}

class AllBooksLoading extends AllBooksState {}

class AllBooksSuccess extends AllBooksState {
  final List<BookModel> books;

  const AllBooksSuccess(this.books);
}

class AllBooksFailure extends AllBooksState {
  final String errMessage;

  const AllBooksFailure(this.errMessage);
}
