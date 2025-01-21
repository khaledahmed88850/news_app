// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news/models/artical_model.dart';
// import 'package:news/services/news_services.dart';
// import 'package:news/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticalModel> article = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     article = await NewsServices(dio: Dio()).getnews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: article.length,
//                 (context, index) {
//             return NewsTile(
//               model: article[index],
//             );
//           }));
//   }
// }
