import 'package:anime_viewer/provider/home_provider.dart';
import 'package:anime_viewer/utils/ListOFAnime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context,provider,_) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Ani Watch"),
              centerTitle: true,
            ),
            body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2/3
              ),
              itemCount: AnimeList.Anime.length,
              itemBuilder: (context, int i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("webview",arguments: i);
                    },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),

                    color: Color.fromRGBO(225, 221, 149, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(flex: 3,child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(image: NetworkImage(AnimeList.Anime[i].AnimeImg),fit: BoxFit.fill,),
                        )),
                        Expanded(flex: 1,child: Center(child: Text(AnimeList.Anime[i].AnimeName)))
                      ],
                    ),
                  ),
                );
              },
            ));
      }
    );
  }
}
