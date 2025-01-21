import 'package:flutter/material.dart';
import 'package:news/models/row_class.dart';
import 'package:news/views/row_category_view.dart';

class RowModels extends StatelessWidget {
  const RowModels({super.key, required this.rowWidget});
  final RowClass rowWidget;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RowCategoryView(category: rowWidget.imageTitle,
          categoryName: rowWidget.imageTitle,
          color: rowWidget.color,);
        }));
      },
      child: Container(
          margin: const EdgeInsets.all(5),
          height: 110,
          width: 190,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(rowWidget.image),
                 opacity: 1),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Center(
              child: Text(
            rowWidget.imageTitle,
            style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ))),
    );
  }
}

