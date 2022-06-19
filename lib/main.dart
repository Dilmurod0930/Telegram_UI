import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/routes/my_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/lang',
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Telegram',
      theme: ThemeData(),
      onGenerateRoute: MyRoutes.instanse.onGenerate,
      initialRoute: '/auth',
    );
  }
}