import 'package:flutter/material.dart';
import 'package:pawtner/router/map.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';
import 'package:provider/provider.dart';

class PageSplash extends StatefulWidget {
  static final String _tag = 'Splash';
  static final int _id = 1;
  static final int _subid = 0;
  String get tag => _tag;
  int get id => _id;
  int get subid => _subid;
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  late ThemeTemplate _theme;
  final RouterMap _router = RouterMap();
  @override
  Widget build(BuildContext context) {
    _theme = Provider.of<ThemeGeneral>(context).template;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              SizedBox(height: 100),
              Image.asset('assets/image/logo.png', width: 200.0, height: 200.0),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'paW',
                      style: TextStyle(
                        color: _theme.primary,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(text: 'Tner',
                      style: TextStyle(
                        color: _theme.onprimary,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),)
              ])),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    tileMode: TileMode.mirror,
                    colors: [
                      _theme.primary,
                      _theme.primaryvariant,
                      _theme.onprimary,
                    ],
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: _theme.primaryvariant,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _button(Icons.login, 'Login', () {
                      Navigator.pushNamed(context, _router.signin);
                    }),
                    _button(Icons.app_registration, 'Register', () {
                      Navigator.pushNamed(context, _router.signup);
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _button(IconData icon, String text, void Function() onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        spacing: 8,
        children: [
          Icon(icon, size: 24, color: _theme.onprimary),
          Text(text, style: TextStyle(color: _theme.onprimary, fontSize: 16)),
        ],
      ),
    );
  }
}

