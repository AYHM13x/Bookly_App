import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'card_books_state.dart';

class CardBooksCubit extends Cubit<CardBooksState> {
  CardBooksCubit(this.homeRepo) : super(CardBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchCardBooks() async {
    emit(CardBooksLoading());
    var result = await homeRepo.fetchCardBooks();

    result.fold(
      (failure) {
        emit(
          CardBooksFailure(failure.errMessage),
        );
      },
      (listOfBooks) {
        emit(
          CardBooksSuccess(listOfBooks),
        );
      },
    );
  }
}
