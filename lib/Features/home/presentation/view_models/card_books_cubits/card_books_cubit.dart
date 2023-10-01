import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'card_books_state.dart';

class CardBooksCubit extends Cubit<CardBooksState> {
  CardBooksCubit() : super(CardBooksInitial());
}
