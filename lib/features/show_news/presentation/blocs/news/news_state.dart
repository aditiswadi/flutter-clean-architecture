part of 'news_bloc.dart';

enum NewsStatus {
  initial,
  loading,
  error,
}

class NewsState extends Equatable {
  final List<NewsInfo> news;
  final NewsStatus? newsStatus;
  NewsState({
    required this.news,
    this.newsStatus,
  });

  factory NewsState.initial() {
    return NewsState(news: [], newsStatus: NewsStatus.initial);
  }

  @override
  List<Object?> get props => [news, newsStatus];

  NewsState copyWith({
    List<NewsInfo>? news,
    NewsStatus? newsStatus,
  }) {
    return NewsState(
      news: news ?? this.news,
      newsStatus: newsStatus ?? this.newsStatus,
    );
  }

  @override
  String toString() => 'NewsState(news: $news, newsStatus: $newsStatus)';
}
