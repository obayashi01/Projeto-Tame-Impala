import 'package:app_tameimpala/album.dart';
import 'package:flutter/material.dart';

class AlbumDetailScreen extends StatelessWidget {
  final Album album;

  AlbumDetailScreen({required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(album.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // Defina a altura desejada para o container
              child: Image.asset(
                album.imagePath,
                fit: BoxFit.contain, // Ajusta a imagem para caber no container
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Release Year: ${album.year}',
                  style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(album.description, style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
          ],
        ),
      ),
    );
  }
}
