import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.article,
  });

  final List<ArticalModel> article;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return NewsTile(
        model: article[index],
      );
    }));
  }
}
