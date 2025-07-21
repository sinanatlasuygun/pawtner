import 'package:flutter/material.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';
import 'package:provider/provider.dart';

class PageSignIn extends StatefulWidget {
  static final String _tag = 'Sign In';
  static final int _id = 1;
  static final int _subid = 1;
  String get tag => _tag;
  int get id => _id;
  int get subid => _subid;
  const PageSignIn({super.key});

  @override
  State<PageSignIn> createState() => _PageSignInState();
}

class _PageSignInState extends State<PageSignIn> {
  @override
  Widget build(BuildContext context) {
    ThemeTemplate theme = Provider.of<ThemeGeneral>(context).template;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          widget.tag,
          style: TextStyle(color: theme.onprimary, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: theme.primary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
