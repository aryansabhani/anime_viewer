import 'package:anime_viewer/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookMark extends StatelessWidget {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Bokkmarks"),
        ),
        body: (provider.BookMark.isNotEmpty)
            ? Padding(
                padding: EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: provider.BookMark.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${provider.BookMark[index]}"),
                      trailing: IconButton(onPressed: () {
                        provider.deleteBookmark(index: index);
                      }, icon: Icon(Icons.delete)),
                      onTap: () {
                        Navigator.of(context).pushNamed("bookmark",
                            arguments: provider.BookMark[index]);
                      },
                    );
                  },
                ))
            : Center(child: Text("ADD BOOKMARK")),
      );
    });
  }
}
