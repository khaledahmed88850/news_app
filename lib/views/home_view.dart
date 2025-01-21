import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view_builder.dart';
import 'package:news/models/row_class.dart';
import 'package:news/widgets/row_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<RowClass> rowItems = const [
    RowClass(imageTitle: 'Sports', image: 'assets/sports.avif' , color: Color.fromARGB(214, 140, 194, 147)),
    RowClass(imageTitle: 'Science', image: 'assets/science.avif', color: Color.fromARGB(255, 165, 139, 172)),
    RowClass(imageTitle: 'Business', image: 'assets/business.avif', color: Color.fromARGB(255, 138, 164, 172)),
    RowClass(imageTitle: 'Technology', image: 'assets/technology.jpeg', color: Color.fromARGB(223, 151, 129, 172)),
    RowClass(imageTitle: 'Entertainment', image: 'assets/entertaiment.avif', color: Color.fromARGB(255, 222, 181, 135)),
    RowClass(imageTitle: 'Health', image: 'assets/health.avif', color: Color.fromARGB(255, 186, 201, 137)),
    RowClass(imageTitle: 'General', image: 'assets/general.avif', color: Color.fromARGB(255, 192, 167, 167)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News'),
              Text(
                'cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: RowListView(rowItems: rowItems)),
            const NewsListViewBuilder(category: 'Business',)
          ],
        ),
        backgroundColor:const Color.fromARGB(255, 181, 181, 181));
  }
}
