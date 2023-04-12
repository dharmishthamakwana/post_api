import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled18/home/screen/view/post_screen.dart';

import 'home/screen/provider/post_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Post(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => Postscreen()},
    ),
  ));
}
