import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchCardBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchCardBooks();

    result.fold(
      (failure) {
        emit(
          NewestBooksFailure(failure.errMessage),
        );
      },
      (listOfBooks) {
        emit(
          NewestBooksSuccess(listOfBooks),
        );
      },
    );
  }
}
