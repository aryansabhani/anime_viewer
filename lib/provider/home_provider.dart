import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomeProvider extends ChangeNotifier {
  InAppWebViewController? webViewController;
  List BookMark = [];

  GoToHome({required String url}) {
    webViewController?.loadUrl(urlRequest: URLRequest(url: Uri.parse(url)));
    notifyListeners();
  }

  GoBack() {
    webViewController?.goBack();
    notifyListeners();
  }

  GoForward() {
    webViewController?.goForward();
    notifyListeners();
  }

  GoRefresh() {
    webViewController?.reload();
    notifyListeners();
  }

  AddBookmark() async {
    var url = await webViewController?.getUrl();
    print(url);
    BookMark.add(url);
  }


  deleteBookmark({required int index}) {
    BookMark.removeAt(index);
    notifyListeners();
  }

  SearchAnime({required String url}) {
    webViewController?.loadUrl(
        urlRequest: URLRequest(
            url: Uri.parse("https://aniwatch.to/search?keyword=$url")));
  }
}
