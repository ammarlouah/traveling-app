import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  //const Categi=oryTripsScreen({ Key? key }) : super(key: key);
  final String categoryId;
  final String categoryTitle;

  CategoryTripsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('قائمة برحلات هذا التصنيف'),
      ),
    );
  }
}
