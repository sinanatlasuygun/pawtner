import 'package:flutter/material.dart';
import 'package:pawtner/router/map.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';
import 'package:provider/provider.dart';

class WidgetDrawer extends StatefulWidget {
  final int id;
  final int subid;
  const WidgetDrawer({super.key, required this.id, required this.subid});

  @override
  State<WidgetDrawer> createState() => _WidgetDrawerState();
}

class _WidgetDrawerState extends State<WidgetDrawer> {
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
                          text: 'paW',
                          style: TextStyle(
                            color: _theme.onprimary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Tner',
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
          _drawerItem(_route.home, Icons.home, _route.home, 1),
          
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
