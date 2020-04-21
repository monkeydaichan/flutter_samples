import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import './article/test.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key, this.stepNo}) : super(key: key);

  final int stepNo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // stepNoの値によって表示させるWidgetを変化させる
      body: MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  MainBody({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Markdown(
        // controller: controller,
        selectable: true,
        data: TestArticle,
        imageDirectory: 'https://raw.githubusercontent.com',
      ),
    );
  }
}
