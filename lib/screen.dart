import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(),
          body: MainPageWidgets(),
        ));
  }
}

class MainPageWidgets extends StatelessWidget {
  MainPageWidgets({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
          child: TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: new OutlineInputBorder(borderSide: new BorderSide()),
                hintText: title,
                hintStyle: Theme.of(context).textTheme.bodyText1,
              ))),
    ));
  }
}
