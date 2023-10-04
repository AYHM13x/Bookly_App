import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homeRepo) : super(AllBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchAllBooks() async {
    emit(AllBooksLoading());
    var result = await homeRepo.fetchAllBooks();

    result.fold(
      (failure) {
        emit(
          AllBooksFailure(failure.errMessage),
        );
      },
      (listOfBooks) {
        emit(
          AllBooksSuccess(listOfBooks),
        );
      },
    );
  }
}
