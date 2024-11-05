import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Noticia> noticias = [
      Noticia(
        titulo: 'Los de informática no hacen eventos',
        imagenUrl: 'https://files.catbox.moe/5frthq.webp', 
      ),
      Noticia(
        titulo: 'Camisas de la carrera disponibles',
        imagenAsset: 'assets/images/camisa.jpg', 
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('ÚLTIMO MOMENTO 🚑'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          final noticia = noticias[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                noticia.imagenUrl != null
                    ? Image.network(noticia.imagenUrl!)
                    : Image.asset(noticia.imagenAsset!),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    noticia.titulo,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


class Noticia {
  final String titulo;
  final String? imagenUrl; 
  final String? imagenAsset; 

  Noticia({
    required this.titulo,
    this.imagenUrl,
    this.imagenAsset,
  });
}
