import 'package:anime_viewer/provider/home_provider.dart';
import 'package:anime_viewer/utils/ListOFAnime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Ani Watch"),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("bookmarkpage");
                  },
                  icon: Icon(Icons.bookmark)),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  onSubmitted: (value) {
                    provider.SearchAnime(url: value);
                    Navigator.of(context).pushNamed("search", arguments: value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search",
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2 / 3),
                  itemCount: AnimeList.Anime.length,
                  itemBuilder: (context, int i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("webview", arguments: i);
                      },
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        color: Colors.blueAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image(
                                    image: NetworkImage(
                                        AnimeList.Anime[i].AnimeImg),
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Center(
                                    child: Text(AnimeList.Anime[i].AnimeName)))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ));
    });
  }
}
