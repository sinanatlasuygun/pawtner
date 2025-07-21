import 'package:flutter/material.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';
import 'package:pawtner/widget/appbar.dart';
import 'package:pawtner/widget/drawer.dart';
import 'package:pawtner/widget/enddrawer.dart';
import 'package:provider/provider.dart';

class PageHome extends StatefulWidget {
  static final String _tag = 'Home';
  static final int _id = 2;
  static final int _subid = 0;
  String get tag => _tag;
  int get id => _id;
  int get subid => _subid;
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  late ThemeTemplate _theme;
  @override
  void didChangeDependencies() {
    _theme=Provider.of<ThemeGeneral>(context).template;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: ''),
      drawer: WidgetDrawer(id: widget.id, subid: widget.subid),
      endDrawer: WidgetEndDrawer(id: widget.id, subid: widget.subid),
      body: SingleChildScrollView(child:Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          SizedBox(height: 24),
          Image.asset('assets/image/logo.png',width: 200.0,height: 200.0,),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(tileMode: TileMode.mirror,colors: [
                _theme.primary,
                _theme.primaryvariant,
                _theme.onprimary
              ]),
              shape: BoxShape.rectangle,
              border: Border.all(style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside,color: _theme.primaryvariant,width: 2.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(Icons.login, 'Login', (){}),
                _button(Icons.app_registration, 'Register', (){})
              ],
            ),
          )
        ]
      )))
    );
  }
  Widget _button(IconData icon,String text, void Function() onPressed) {
    return ElevatedButton(onPressed: onPressed, child: Row(
      spacing: 8,
      children: [
        Icon(icon,size: 24,color: _theme.onprimary,),
        Text(text,style: TextStyle(color: _theme.onprimary,fontSize: 16))
      ],
    ));
  }
}
