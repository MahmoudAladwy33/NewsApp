import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/CircularInd.dart';
import 'package:news_app/widgets/ErrorMsg.dart';
import 'package:news_app/widgets/NewsList.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = News_Service(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return NewsList(
            articles: Snapshot.data!,
          );
        } else if (Snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: ErrorMsg(msg: 'Oops there was an error , try later'),
          );
        } else {
          return SliverToBoxAdapter(
            child: CircularInd(),
          );
        }
      },
    );
  }
}
