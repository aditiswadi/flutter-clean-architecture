import 'package:news_app/features/show_news/domain/entities/news_info.dart';

class NewsInfoModel extends NewsInfo {
  NewsInfoModel({
    String? title,
    String? author,
    String? imageUrl,
    String? content,
    String? dateTime,
  }) : super(
          title: title,
          author: author,
          imageUrl: imageUrl,
          content: content,
          dateTime: _getDateTimeInDateTime(dateTime),
        );

  static DateTime _getDateTimeInDateTime(String? dateTime) {
    if (dateTime == null) {
      return DateTime.now();
    } else {
      final DateTime? dateTimeInDateTimeFormat = DateTime.tryParse(dateTime);
      if (dateTimeInDateTimeFormat == null) {
        return DateTime.now();
      } else {
        return dateTimeInDateTimeFormat;
      }
    }
  }

  factory NewsInfoModel.fromMap(Map<String, dynamic> map) {
    return NewsInfoModel(
      title: map['title'],
      author: map['author'],
      imageUrl: map['urlToImage'],
      content: map['content'],
      dateTime: map['publishedAt'],
    );
  }
}
