import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../constents.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  final String _newestFreeBooks =
      "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:$kAllNewestFreeBooks";
  final String _allFreeBooks =
      "volumes?Filtering=free-ebooks&q=subject:$kAllFreeBooks";

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data =
          await apiService.get(endPoint: _newestFreeBooks);
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(ServerFailure("There was an Error: $e"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchAllBooks() async {
    Map<String, dynamic> data = await apiService.get(endPoint: _allFreeBooks);
    List<BookModel> books = [];
    //debugPrint(data["items"].runtimeType.toString());
    for (var item in data["items"]) {
      books.add(BookModel.fromJson(item));
    }

    return right(books);
    try {} catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(ServerFailure("There was an Error and Problem: $e"));
    }
  }
}
