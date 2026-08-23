import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  String id;
  ScreenPage({super.key,required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Screen ID $id'),
      ),
    );
  }
}

