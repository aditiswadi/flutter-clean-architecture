import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';
import 'package:news_app/core/routes/router.gr.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';

class NewsViewPage extends StatelessWidget {
  final NewsInfo newsInfo;
  const NewsViewPage({
    super.key,
    required this.newsInfo,
  });

  String _getDateTimeInDDMMYYFormat(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.router.replace(HomeRoute());
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsInfo.title != null ? newsInfo.title! : '-- No Title --',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 300,
                color: Palette.lightGrey,
                margin: EdgeInsets.symmetric(vertical: 16),
                child: newsInfo.imageUrl != null
                    ? Image.network(
                        newsInfo.imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : SizedBox(),
              ),
              Text(
                _getDateTimeInDDMMYYFormat(newsInfo.dateTime),
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.author != null ? newsInfo.author! : '-- No Author --',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.content != null
                    ? newsInfo.content!
                    : '-- No Content --',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
