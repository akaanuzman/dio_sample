import 'package:flutter/material.dart';

import 'features/comments/view/comments_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommentsView(),
    );
  }
}
