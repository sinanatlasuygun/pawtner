import 'package:flutter/material.dart';
import 'package:pawtner/theme/general.dart';
import 'package:pawtner/theme/template.dart';

class WidgetAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const WidgetAppbar({super.key, required this.title});

  @override
  State<WidgetAppbar> createState() => _WidgetAppbarState();
  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _WidgetAppbarState extends State<WidgetAppbar> {
  late ThemeTemplate _theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _theme = ThemeGeneral().template;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: _theme.primary,
            boxShadow: [
              BoxShadow(
                color: _theme.primaryvariant,
                offset: Offset(0, 4),
                spreadRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),

          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: widget.preferredSize.height,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu, size: 40),
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'paW',
                      style: TextStyle(
                        color: _theme.onprimary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Tner',
                      style: TextStyle(
                        color: _theme.surfacetint,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(Icons.person, size: 40),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
