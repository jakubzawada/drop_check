import 'package:drop_check/api/firebase_api.dart';
import 'package:drop_check/app/incjection_container.dart';
import 'package:drop_check/theme/theme.dart';
import 'package:drop_check/widgets/notification_settings.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:drop_check/app/home/intro/intro_page.dart';
import 'package:drop_check/app/home/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NotificationSettings()),
      ],
      child: Consumer<NotificationSettings>(
        builder: (context, settings, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: lightMode,
            darkTheme: darkMode,
            themeMode:
                settings.darkModeIsSwitched ? ThemeMode.dark : ThemeMode.light,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('pl'),
              Locale('es'),
            ],
            home: const InitialScreen(),
            navigatorKey: navigatorKey,
            routes: {
              'intro_page': (context) => const IntroPage(),
              'home_page': (context) => const HomePage(),
            },
          );
        },
      ),
    );
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  InitialScreenState createState() => InitialScreenState();
}

class InitialScreenState extends State<InitialScreen> {
  bool _isFirstRun = true;

  @override
  void initState() {
    super.initState();
    _checkFirstRun();
  }

  Future<void> _checkFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstRun = prefs.getBool('isFirstRun') ?? true;

    if (isFirstRun) {
      await prefs.setBool('isFirstRun', false);
      setState(() {
        _isFirstRun = true;
      });
    } else {
      setState(() {
        _isFirstRun = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isFirstRun) {
      return const IntroPage();
    } else {
      return const HomePage();
    }
  }
}
