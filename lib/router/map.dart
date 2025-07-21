import 'package:flutter/material.dart';
import 'package:pawtner/page/home.dart';
import 'package:pawtner/page/signin.dart';
import 'package:pawtner/page/signup.dart';
import 'package:pawtner/page/splash.dart';

class RouterMap extends ChangeNotifier {
  /// Page Variables
  static final _home = PageHome();
  static final _splash = PageSplash();
  static final _sigin = PageSignIn();
  static final _signup = PageSignUp();

  /// Page Map
  Map<String, Widget Function(BuildContext)> get _map => {
    tager(_home.tag): (context) => _home,
    tager(_splash.tag): (context) => _splash,
    tager(_sigin.tag): (context) => _sigin,
    tager(_signup.tag): (context) => _signup,
  };

  /// Page Functions
  void add(String title, Widget Function(BuildContext) page) {
    _map.addAll({title.toLowerCase(): page});
  }

  String tager(String tag) => tag.replaceAll(' ', '').toLowerCase();

  /// GET Page Fuctions
  Map<String, Widget Function(BuildContext)> get map => _map;
  String get home => tager(_home.tag);
  String get splash => tager(_splash.tag);
  String get signin => tager(_sigin.tag);
  String get signup => tager(_signup.tag);
}
