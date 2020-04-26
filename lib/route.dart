import 'package:flutter/material.dart';
import 'package:flutter_samples/home.dart';
import 'package:flutter_samples/sms.dart';
import 'package:flutter_samples/verify.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => new SmsPage(),
  '/verify': (BuildContext context) => new VerifyPage(),
  '/home': (BuildContext context) => new HomePage(),
};
