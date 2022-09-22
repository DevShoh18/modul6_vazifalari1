import 'package:flutter/material.dart';
import 'package:modul6_vazifalari/homeworkOne.dart';
import 'package:easy_localization/easy_localization.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        child: MyApp(),
        fallbackLocale: const Locale('en','US'),
        saveLocale: true,
        supportedLocales: const [Locale('en','US'),Locale('fr','FR'),Locale('ru','RU'),Locale('uz','UZ'),],
        path: 'assets/translate',),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeworkOne(),
    );
  }
}
