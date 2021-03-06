import 'package:flutter/material.dart';
import 'package:startupnamer/page/flashchat/chat_screen.dart';
import 'package:startupnamer/page/skeleton/calculate_brain.dart';
import 'pages.dart';

class Routes {
  static const String kRoot = '/';
  static const String kMiCard = '/micard';
  static const String kDicee = '/dicee';
  static const String kMagicBall = '/magicball';
  static const String kXylophone = '/xylophone';
  static const String kQuizzler = '/quizzler';
  static const String kDestiny = '/destiny';
  static const String kTimer = '/timer';
  static const String kSkeleton = '/skeleton';
  static const String kBMICalculator = '/skeleton/calculator';
  static const String kClima = '/clima';
  static const String kLocation = '/clima/location';
  static const String kCity = '/clima/location/city';
  static const String kBitCoin = '/bitcoin';
  static const String kFlashChat = '/flashChat';
  static const String kChatLogin = '/flashChat/login';
  static const String kChatRegistration = '/flashChat/registration';
  static const String kChatScreen = '/flashChat/chat_screen';
  static const String kTodoey = '/todoey';
  static const String kPlatformChannel = '/platform_channel';
  static const String kBottomSheetTest = '/bottom_sheep';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.kRoot:
        return MaterialPageRoute(builder: (_) => StudyListPage());

      case Routes.kMiCard:
        return MaterialPageRoute(builder: (_) => MiCard());

      case Routes.kDicee:
        return MaterialPageRoute(builder: (_) => Dicee());

      case Routes.kMagicBall:
        return MaterialPageRoute(builder: (_) => MagicEightBall());

      case Routes.kXylophone:
        return MaterialPageRoute(builder: (_) => Xylophone());

      case Routes.kQuizzler:
        return MaterialPageRoute(builder: (_) => Quizzler());

      case Routes.kDestiny:
        return MaterialPageRoute(builder: (_) => Destini());

      case Routes.kTimer:
        return MaterialPageRoute(builder: (_) => Timer());

      case Routes.kSkeleton:
        return MaterialPageRoute(builder: (_) => Skeleton());

      case Routes.kBMICalculator:
        if (args is CalculatorBrain)
          return MaterialPageRoute(builder: (_) => ResultsPage(calc: args,));
        return _errorRoute();

      case Routes.kClima:
        return MaterialPageRoute(builder: (_) => Clima());

      case Routes.kLocation:
        return MaterialPageRoute(builder: (_) => LocationScreen(locationWeather: args,));

      case Routes.kCity:
        return MaterialPageRoute(builder: (_) => CityScreen());

      case Routes.kBitCoin:
        return MaterialPageRoute(builder: (_) => BitCoin());

      case Routes.kFlashChat:
        return MaterialPageRoute(builder: (_) => FlashChat());

      case Routes.kChatLogin:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case Routes.kChatRegistration:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());

      case Routes.kChatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());

      case Routes.kTodoey:
        return MaterialPageRoute(builder: (_) => Todoey());

      case Routes.kPlatformChannel:
        return MaterialPageRoute(builder: (_) => PlatformChannel());

      case Routes.kBottomSheetTest:
        return MaterialPageRoute(builder: (_) => BottomSheetTestScreen());

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