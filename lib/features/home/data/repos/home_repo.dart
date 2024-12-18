import 'package:dartz/dartz.dart';
import 'package:readify/core/errors/failure.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchsimilardBooks(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchBooksByName(
      {required String bookName});
}
