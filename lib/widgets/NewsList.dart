import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:news_app/widgets/NewsWidget.dart';

class NewsList extends StatelessWidget {
  NewsList({required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsWidget(articleModel: articles[index]);
        },
      ),
    );
  }
}
