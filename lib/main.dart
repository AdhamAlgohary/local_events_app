import 'package:flutter/material.dart';
import 'package:local_events_app/responsive/responsive.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/splash_page/splash_page.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <Provider>[
        Provider<CategoriesViewModel>(create: (_) => CategoriesViewModel()),
      ],
      child: MaterialApp(
        routes: {'Responsive': (_) => const Responsive()},
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFFFFFFF),
            primaryColor: const Color(0xFFFF4700)),
      ),
    );
  }
}
