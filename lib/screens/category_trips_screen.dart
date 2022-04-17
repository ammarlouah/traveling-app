import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  //const Categi=oryTripsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة الرحلات'),
      ),
      body: Center(
        child: Text('قائمة برحلات هذا التصنيف'),
      ),
    );
  }
}
