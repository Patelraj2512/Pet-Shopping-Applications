import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'utils/colors.dart';

void main() {
  runApp(const PetShopApp());
}

class PetShopApp extends StatelessWidget {
  const PetShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Shop App',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          surface: AppColors.background,
        ),
        fontFamily: 'Roboto', // Using default font but specifying for future
        textTheme: const TextTheme(
           headlineLarge: TextStyle(color: AppColors.textMain, fontWeight: FontWeight.bold),
           bodyLarge: TextStyle(color: AppColors.textMain),
           bodyMedium: TextStyle(color: AppColors.textMain),
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.background,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.textMain),
          titleTextStyle: TextStyle(color: AppColors.textMain, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
