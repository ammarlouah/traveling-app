import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({ Key? key }) : super(key: key);

  final String title;
  final String imageUrl;

  const CategoryItem({required this.title, required this.imageUrl}) : super();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(15),
          ),
        )
      ],
    );
  }
}
