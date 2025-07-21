import 'package:flutter/material.dart';
import 'package:pawtner/router/map.dart' show RouterMap;


class RouterGeneral {
  static final RouterGeneral _instance = RouterGeneral._internal();
  factory RouterGeneral() => _instance;

  /// Route Variables
  static final RouterMap _rmap = RouterMap();
  static String _initialroute = _rmap.splash;
  RouterGeneral._internal();

  /// GET Functions
  Map<String, Widget Function(BuildContext)> get map => _rmap.map;
  String get initialRoute => _initialroute;
  

  /// SET Functions
  set setInitialRoute(String newinitialroute) =>
      _initialroute = newinitialroute;

  /// Functions
  Route<dynamic> unknownPage(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => _NotFoundPage(),
      settings: settings,
    );
  }    
}

class _NotFoundPage extends StatelessWidget {
  const _NotFoundPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            const Text('404 - Not Found'),
            ElevatedButton(
              onPressed: () {
                Navigator.canPop(context);
              },
              child: Text('Return', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}