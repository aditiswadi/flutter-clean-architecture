part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

class FetchNewsEvent extends NewsEvent {
  final String? searchText;
  FetchNewsEvent({
    this.searchText,
  });

  @override
  List<Object?> get props => [searchText];
}
