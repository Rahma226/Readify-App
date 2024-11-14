import 'dart:math';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:readify/core/errors/failure.dart';
import 'package:readify/core/utils/api_service.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:readify/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(
      ServerFailure(e.toString()),
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(
      ServerFailure(e.toString()),
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchsimilardBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
    }
    return left(
      ServerFailure(e.toString()),
    );
  }
}
