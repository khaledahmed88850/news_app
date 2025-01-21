
import 'package:flutter/material.dart';
import 'package:news/models/row_class.dart';
import 'package:news/widgets/row_models.dart';

class RowListView extends StatelessWidget {
  const RowListView({
    super.key,
    required this.rowItems,
  });

  final List<RowClass> rowItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: rowItems.length,
          itemBuilder: (context, index) {
            return RowModels(rowWidget: rowItems[index]);
          }),
    );
  }
}
