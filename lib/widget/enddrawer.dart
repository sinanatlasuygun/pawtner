import 'package:flutter/material.dart';
import 'package:pawtner/router/map.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';
import 'package:provider/provider.dart';

class WidgetEndDrawer extends StatefulWidget {
  final int id;
  final int subid;
  const WidgetEndDrawer({super.key, required this.id, required this.subid});

  @override
  State<WidgetEndDrawer> createState() => _WidgetEndDrawerState();
}

class _WidgetEndDrawerState extends State<WidgetEndDrawer> {
  late ThemeTemplate _theme;
  late RouterMap _route;
  late ThemeGeneral _themeprovider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _themeprovider = Provider.of<ThemeGeneral>(context);
    _theme = _themeprovider.template;
    _route = RouterMap();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: _theme.primary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: _theme.primaryvariant),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 20,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Set',
                          style: TextStyle(
                            color: _theme.onprimary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'tings',
                          style: TextStyle(
                            color: _theme.surfacetint,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _subdrawer(
            'Settings Settings',
            Icons.settings,
            _route.home,
            0,
            1,
          ),
          _subdrawer(
            'Appearance Page',
            Icons.imagesearch_roller,
            _route.home,
            0,
            2,
          ),
          _subdrawer('User Settings', Icons.person, _route.home, 0, 3),
          _subdrawer('About Settings', Icons.info, _route.home, 0, 4),
          _subdrawer(
            'Security Settings',
            Icons.security,
            _route.home,
            0,
            5,
          ),
          SizedBox(height: 25),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  Icon(Icons.exit_to_app,color: _theme.onprimary,size: 25,),
                  Text('Exit',style: TextStyle(color: _theme.onprimary,fontSize: 25),)
                ],),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(String title, IconData icon, String tag, int id) {
    bool enable = widget.id == id ? false : true;
    return ListTile(
      enabled: enable,
      hoverColor: _theme.primaryvariant,
      leading: Icon(icon, color: _theme.onprimary),
      title: Text(title, style: TextStyle(color: _theme.onprimary)),
      onTap: enable
          ? () {
              Navigator.of(context).pushReplacementNamed(tag);
            }
          : null,
    );
  }

  Widget _expansesItem(String title, IconData icon, List<ListTile> subpages) {
    return ExpansionTile(
      leading: Icon(icon, color: _theme.onprimary, size: 25),

      title: Text(title, style: TextStyle(color: _theme.onprimary)),
      childrenPadding: EdgeInsets.only(left: 20),
      children: subpages,
    );
  }

  ListTile _subdrawer(
    String title,
    IconData icon,
    String tag,
    int id,
    int subid,
  ) {
    bool enable = (widget.id == id && widget.subid == subid) ? false : true;
    return ListTile(
      enabled: enable,
      hoverColor: _theme.primaryvariant,
      leading: Icon(icon, color: _theme.onprimary),
      title: Text(title, style: TextStyle(color: _theme.onprimary)),
      onTap: enable
          ? () {
              Navigator.of(context).pushReplacementNamed(tag);
            }
          : null,
    );
  }

  IconButton _iconbutton(
    IconData icon,
    double size,
    int id,
    int subid,
    String tag,
  ) {
    bool enable = (widget.id == id && widget.subid == subid) ? false : true;
    return IconButton(
      onPressed: enable
          ? () {
              Navigator.of(context).pushReplacementNamed(tag);
            }
          : null,
      icon: Icon(icon),
      color: _theme.onprimary,
      hoverColor: _theme.onprimary,
      splashRadius: size,
    );
  }

}