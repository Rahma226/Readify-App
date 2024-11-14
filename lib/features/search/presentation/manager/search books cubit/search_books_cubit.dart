import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';

import '../../../../home/data/repos/home_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestdBooks() async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(SearchBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books));
      },
    );
  }
}
