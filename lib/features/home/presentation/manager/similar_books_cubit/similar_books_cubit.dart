import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilardBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchsimilardBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
