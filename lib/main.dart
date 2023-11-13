import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:oonzoo/modules/home/manager/home_manager.dart';
import 'package:oonzoo/modules/home/views/home_view.dart';
import 'package:oonzoo/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Oonzoo Task',
        theme: AppTheme.darkTheme,
        home: ChangeNotifierProvider(
          lazy: false,
          create: (context) => HomeManager(),
          child: const HomeView(),
        ),
      ),
    );
  }
}
