import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_samples/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_samples/bloc.dart';

class DatetimePage extends StatelessWidget {
  DatetimePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
      ),
      body: ChangeNotifierProvider<TimeStore>(
        create: (_) => TimeStore(),
        child: DateTimeWidget(),
      ),
    );
  }
}

class DateTimeWidget extends StatelessWidget {
  DateTimeWidget({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.clock),
                Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      "日時",
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                Expanded(
                  child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            BasicDateField(),
                            TimeShow(),
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
        TimeField(),
      ],
    ));
  }
}
