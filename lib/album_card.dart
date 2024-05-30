import 'package:app_tameimpala/album.dart';
import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  final VoidCallback onTap;

  AlbumCard({required this.album, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(album.imagePath),
        title: Text(album.title),
        subtitle: Text(album.year),
        onTap: onTap,
      ),
    );
  }
}