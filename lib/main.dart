import 'package:anime_viewer/provider/home_provider.dart';
import 'package:anime_viewer/screen/home_page.dart';
import 'package:anime_viewer/screen/webview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => HomeProvider(),)
  ],child: const MyApp()),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      routes: {
        "/" : (context) => HomePage(),
        "webview" : (context) => WebView_Page(),
      },
    );
  }
}

