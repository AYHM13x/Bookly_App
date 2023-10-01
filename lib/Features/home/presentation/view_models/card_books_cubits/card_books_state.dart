part of 'card_books_cubit.dart';

abstract class CardBooksState extends Equatable {
  const CardBooksState();

  @override
  List<Object> get props => [];
}

class CardBooksInitial extends CardBooksState {}

class CardBooksLoading extends CardBooksState {}

class CardBooksSuccess extends CardBooksState {
  final List<BookModel> books;

  const CardBooksSuccess(this.books);
}

class CardBooksFailure extends CardBooksState {
  final String errMessage;

  const CardBooksFailure(this.errMessage);
}
