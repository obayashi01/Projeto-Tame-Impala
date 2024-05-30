import 'package:app_tameimpala/album.dart';
import 'package:app_tameimpala/album_card.dart';
import 'package:app_tameimpala/pages/album_detail.dart';
import 'package:flutter/material.dart';

class AlbumListScreen extends StatelessWidget {
  final List<Album> albums = [
    Album(
      title: 'Innerspeaker',
      year: '2010',
      imagePath: 'images/innerspeaker.jpg',
      description:
          '"Innerspeaker" estabeleceu Tame Impala como uma força significativa na música psicodélica contemporânea e lançou a carreira de Kevin Parker como um dos produtores mais inovadores de sua geração. O álbum é uma viagem sonora que continua a ser influente e apreciado por fãs e críticos em todo o mundo.',
    ),
    Album(
      title: 'Lonerism',
      year: '2012',
      imagePath: 'images/lonerism.jpeg',
      description:
          '"Lonerism" é o segundo álbum de estúdio da banda australiana Tame Impala, lançado em 5 de outubro de 2012. Este álbum marcou outro passo significativo na evolução sonora da banda, explorando ainda mais o território da psicodelia e incorporando uma ampla gama de influências musicais.',
    ),
    Album(
      title: 'Currents',
      year: '2015',
      imagePath: 'images/currents.jpg',
      description:
          '"Currents" é o terceiro álbum de estúdio da banda australiana Tame Impala, lançado em 17 de julho de 2015. Este álbum marca uma mudança significativa no som da banda, afastando-se do rock psicodélico mais tradicional de seus álbuns anteriores e abraçando uma estética mais eletrônica e pop.',
    ),
    Album(
      title: 'The Slow Rush',
      year: '2020',
      imagePath: 'images/slowrush.jpg',
      description:
          '"The Slow Rush" é meio MERDA, mas é o quarto álbum de estúdio da banda australiana Tame Impala, lançado em 14 de fevereiro de 2020. Este álbum continua a jornada musical de Kevin Parker, explorando novas sonoridades e temas enquanto mantém a assinatura sonora distintiva da banda.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tame Impala Albums')),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return AlbumCard(
              album: albums[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AlbumDetailScreen(album: albums[index]),
                  ),
                );
              });
        },
      ),
    );
  }
}
