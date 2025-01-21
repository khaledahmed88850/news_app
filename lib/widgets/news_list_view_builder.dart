import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category, 
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future; 
  @override
  void initState() {
    super.initState();
    future= NewsServices(dio: Dio()).getnews(category: widget.category );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(article: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 200),
                child: Center(
                  child: Column(
                    children: [
                      Text('Oops!! There was an error ',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700)),
                      Text('Try again later',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              ),
            );
          }
          else {
            return const SliverToBoxAdapter(child: Padding(
            padding:  EdgeInsets.all(150),
            child: Center(child: CircularProgressIndicator(color: Colors.redAccent,)),
          )); 
          }
        });

    








    //   return isLoading
    //       ? const SliverToBoxAdapter(child: Padding(
    //         padding:  EdgeInsets.all(150),
    //         child: Center(child: CircularProgressIndicator(color: Colors.redAccent,)),
    //       ))
    //       : article.isNotEmpty
    //           ? NewsListView(article: article)
    //           : const SliverToBoxAdapter(
    //               child: Padding(
    //                 padding:  EdgeInsets.only(top: 200),
    //                 child: Center(
    //                     child: Column(children: [
    //                        Text('Oops!! There was an error ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
    //                         Text('Try again later', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))
    //                     ],)
    //                        ),
    //               ));
    // }
  }
}
