import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view_builder.dart';

class RowCategoryView extends StatelessWidget {
  const RowCategoryView({super.key, required this.category, required this.categoryName, required this.color});
final String category;
final String categoryName;
final Color color;
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text(categoryName,
            style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
          ),
        ),
        backgroundColor: Colors.transparent,),
        backgroundColor: color,
        body: CustomScrollView(
          slivers: [ NewsListViewBuilder(category: category )],
        ),
      )
    ;
  }
}