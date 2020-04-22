import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container0(),
    );
  }
}

class Container0 extends StatelessWidget {
  Container0({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
              child: Center(
                  child: Text(
            "Container0",
            style: Theme.of(context).textTheme.bodyText1,
          ))),
        ),
        FloatingActionButton(
          child: Icon(
            Icons.chevron_right,
            size: 36,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Container1();
                  },
                  fullscreenDialog: true),
            );
          },
        )
      ],
    ));
  }
}

class Container1 extends StatelessWidget {
  Container1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
              child: Center(
                  child: Text(
            "Container1",
            style: Theme.of(context).textTheme.bodyText1,
          ))),
        )));
  }
}
