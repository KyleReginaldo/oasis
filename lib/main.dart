import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oasis/core/constants/constants.dart';
import 'package:oasis/presentation/pages/main.screen.dart';
import 'package:oasis/presentation/state/cubit/nav_bar_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return MaterialApp(
          title: 'Oasis-development',
          theme: ThemeData(
            primaryColor: PRIMARY_COLOR,
            brightness: Brightness.dark,
            fontFamily: 'NeflixSans',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.5.h),
                ),
                foregroundColor: const MaterialStatePropertyAll(Colors.black),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            dialogTheme: const DialogTheme(
              surfaceTintColor: Colors.black,
              backgroundColor: Colors.black,
            ),
            textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                surfaceTintColor: MaterialStatePropertyAll(PRIMARY_COLOR),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ),
          home: BlocProvider(
            create: (ctx) => NavBarCubit(),
            child: const MainScreen(),
          ),
        );
      },
    );
  }
}
