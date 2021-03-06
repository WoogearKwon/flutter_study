import 'package:flutter/material.dart';
import '../route/route_generator.dart';
import '../model/subject.dart';

class MyStudy {
  static List<Subject> list = [
    Subject(
      'Mi Card: Profile Layout',
      'To learn how to build basic widget layout & add assets',
      Icon(
        Icons.person,
        size: 30,
      ),
      Routes.kMiCard,
    ),
    Subject(
      'Dicee',
      'To learn what stateful widget is',
      Image.asset('images/icon_dicee.png'),
      Routes.kDicee,
    ),
    Subject(
      'MagicBall: Ask Anything',
      'To Solidify what you\'ve learnt in the Dicee tutorial',
      Image.asset('images/icon_magicball.png'),
      Routes.kMagicBall,
    ),
    Subject(
      'Xylophone',
      'To learn how to add package dependencies and to use them',
      Image.asset('images/icon_xylophone.png'),
      Routes.kXylophone,
    ),
    Subject(
      'Quizzler: Quiz Game',
      'To learn how to modularising your code into separate classes(OOP)',
      Image.asset('images/icon_quizzler.png'),
      Routes.kQuizzler,
    ),
    Subject(
      'Destini: Adventure Game',
      'To solidify what you\'ve learnt from Quizzler to use Dart OOP principles to build a well organized project',
      Image.asset('images/icon_destini.png'),
      Routes.kDestiny,
    ),
    Subject(
      'Timer(Using Bloc package)',
      'To learn how to use Bloc Package so that you can separate UI and business logic',
      Icon(Icons.timer),
      Routes.kTimer,
    ),
    Subject(
      'BMI Calculator: A Beautiful Health App',
      'Building Flutter UI for intermediates',
      Icon(
        Icons.local_hospital,
        color: Colors.green,
      ),
      Routes.kSkeleton,
    ),
    Subject(
      'Clima: Weather App',
      'To learn asynchronous programming in Dart and to understand async, await, Future and networking',
      Image.asset('images/icon_clima.png'),
      Routes.kClima,
    ),
    Subject(
      'Bitcoin Ticker: Crypto Currency Price Checking App (API KEY NEEDED)',
      'To learn about using Cupertino and Material Widgets',
      Image.asset('images/icon_coin.png'),
      Routes.kBitCoin,
    ),
    Subject(
      'Flash Chat: Modern Messaging App',
      'To learn incorporate Firebase into your app, to crate beautiful animation, etc',
      Image.asset('images/icon_flash_chat.png'),
      Routes.kFlashChat,
    ),
    Subject(
      'Todoey: To-Do List App',
      'To learn how to manage Flutter state',
      Icon(
        Icons.assignment,
        color: Colors.blueAccent,
      ),
      Routes.kTodoey,
    ),
    Subject(
      'Platform Channels',
      'Writing custom platform specific code for passing messages between Flutter and platform (Android/iOS)',
      Icon(
        Icons.auto_awesome,
        color: Colors.pink,
      ),
      Routes.kPlatformChannel,
    ),
    Subject(
      'Stateful Bottom Sheet',
      'Building bottom sheet with controlling state',
      Icon(
        Icons.ac_unit,
        color: Colors.pink,
      ),
      Routes.kBottomSheetTest,
    ),
  ];
}
