import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/categoty_item.dart';

class CategoriesScreen extends StatelessWidget {
  //const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل سياحي'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((categoryData) => CategoryItem(
            id : categoryData.id,
            title: categoryData.title,
            imageUrl: categoryData.imageUrl)).toList(),
      ),
    );
  }
}
