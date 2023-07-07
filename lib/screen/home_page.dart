import 'package:anime_viewer/utils/ListOFAnime.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ani Watch"),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,

            mainAxisSpacing: 4,
            childAspectRatio: 2/4
          ),
          itemCount: AnimeList.Anime.length,
          itemBuilder: (context, int i) {
            return Container(
              child: Column(
                children: [
                  Image(image: NetworkImage(AnimeList.Anime[i].AnimeImg),fit: BoxFit.fill,)
                ],
              ),
            );
          },
        ));
  }
}
