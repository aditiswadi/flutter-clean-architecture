import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/core/failures_successes/failure.dart';
import 'package:news_app/core/services_locator.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/features/show_news/domain/usecases/fetch_news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final FetchNewsUsecase _fetchNewsUsecase = sl<FetchNewsUsecase>();
  NewsBloc() : super(NewsState.initial()) {
    on<FetchNewsEvent>(_fetchNews);
  }

  void _fetchNews(FetchNewsEvent event, Emitter<NewsState> emit) async {
    final Either<Failure, List<NewsInfo>> fetchNewsResult =
        await _fetchNewsUsecase.fetchNews(event.searchText);

    emit(state.copyWith(newsStatus: NewsStatus.loading));

    fetchNewsResult.fold((l) {
      emit(state.copyWith(newsStatus: NewsStatus.error));
    }, (news) {
      emit(state.copyWith(newsStatus: NewsStatus.initial, news: news));
    });
    print(state);
  }
}
