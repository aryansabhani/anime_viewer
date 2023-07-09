import 'package:anime_viewer/provider/home_provider.dart';
import 'package:anime_viewer/utils/ListOFAnime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class BookMarkPage extends StatelessWidget {
  const BookMarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments;
    return Consumer<HomeProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Ani Watch"),
          ),
          body: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(
                "$arg",
              ),
            ),
            onWebViewCreated: (controller) {
              Provider.of<HomeProvider>(context).webViewController = controller;
            },
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {provider.GoToHome(url: "$arg");}, icon: Icon(Icons.home),),
                IconButton(
                  onPressed: () {provider.AddBookmark();}, icon: Icon(Icons.bookmark_add_outlined),),
                IconButton(onPressed: () {
                  provider.GoBack();
                }, icon: Icon(Icons.arrow_back_ios_new),),
                IconButton(onPressed: () {provider.GoRefresh();}, icon: Icon(Icons.refresh),),
                IconButton(onPressed: () {provider.GoForward();}, icon: Icon(Icons.arrow_forward_ios),),
              ],
            ),
          ),
        );
      }
    );
  }
}
