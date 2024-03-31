import 'package:bookreview/src/test_pages/phone_test.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter router;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    router = GoRouter(routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: "/phone",
        builder: (context, state) => const PhoneTest(),
      ),
    ], initialLocation: "/");
    //route
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0
            //backgroundColor: Color(0xff1c1c1c),
            //titleTextStyle: TextStyle(color: Colors.white)
            ),
        //scaffoldBackgroundColor: const Color(0xff1c1c1c),
      ),
    );
  }
}
