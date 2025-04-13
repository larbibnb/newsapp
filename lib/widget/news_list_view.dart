import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../widget/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.newsListtt});
  final List<NewsModel> newsListtt;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsListtt.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: NewsCard(newsModel: newsListtt[index]),
          );
        },
      ),
    );
  }
}
