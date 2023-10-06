import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../constents.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  final String _newestFreeBooks =
      "volumes?Filtering=free-ebooks&Sorting=newest&maxResults=40&q=subject:$kAllNewestFreeBooks";
  final String _allFreeBooks =
      "volumes?Filtering=free-ebooks&maxResults=40&q=subject:$kAllFreeBooks";

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data =
          await apiService.get(endPoint: _newestFreeBooks);
      List<BookModel> books = [];
      for (var item in data["items"] ?? []) {
        books.add(BookModel.fromJson(item));
      }

      if (books.isNotEmpty) {
        return right(books);
      } else {
        return left(ServerFailure("there are no books"));
      }
    } catch (e) {
      debugPrint(e.toString());
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
    try {
      Map<String, dynamic> data = await apiService.get(endPoint: _allFreeBooks);
      List<BookModel> books = [];

      for (var item in data["items"] ?? []) {
        books.add(BookModel.fromJson(item));
      }
      if (books.isNotEmpty) {
        return right(books);
      } else {
        return left(ServerFailure("there are no books"));
      }
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(ServerFailure("There was an Error and Problem: $e"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    String allSimilarBooks =
        "volumes?Filtering=free-ebooks&Sorting=relevance&maxResults=40&q=intitle:programming";
    try {
      Map<String, dynamic> data =
          await apiService.get(endPoint: allSimilarBooks);
      List<BookModel> books = [];

      for (var item in data["items"] ?? []) {
        books.add(BookModel.fromJson(item));
      }
      if (books.isNotEmpty) {
        return right(books);
      } else {
        return left(ServerFailure("there are no books"));
      }
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(ServerFailure("There was an Error and Problem: $e"));
    }
  }
}
