import 'package:flutter/material.dart';
import 'package:startupnamer/page/skeleton/skeleton.dart';
import 'pages.dart';

class Routes {
  static const String root = '/';
  static const String miCard = '/micard';
  static const String dicee = '/dicee';
  static const String magicBall = '/magicball';
  static const String xylophone = '/xylophone';
  static const String quizzler = '/quizzler';
  static const String destiny = '/destiny';
  static const String timer = '/timer';
  static const String skeleton = '/skeleton';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments possed in while calling Navigator.pushNa ed
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => StudyListPage());
      case Routes.miCard:
        return MaterialPageRoute(builder: (_) => MiCard());
      case Routes.dicee:
        return MaterialPageRoute(builder: (_) => Dicee());
      case Routes.magicBall:
        return MaterialPageRoute(builder: (_) => MagicEightBall());
      case Routes.xylophone:
        return MaterialPageRoute(builder: (_) => Xylophone());
      case Routes.quizzler:
        return MaterialPageRoute(builder: (_) => Quizzler());
      case Routes.destiny:
        return MaterialPageRoute(builder: (_) => Destini());
      case Routes.timer:
        return MaterialPageRoute(builder: (_) => Timer());
      case Routes.skeleton:
        return MaterialPageRoute(builder: (_) => Skeleton());

    // If there is no such named route in the switch statement, e.g. / third
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}