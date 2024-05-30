import 'package:app_tameimpala/pages/album_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tame Impala Albums',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlbumListScreen(),
    );
  }
}
