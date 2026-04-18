
import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor:const Color.fromARGB(255, 88, 175, 238),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 81, 162, 233),

);
void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations([
   // DeviceOrientation.portraitUp,
  //]).then((fn){
//runApp(const MyApp());
  //});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        //useMaterial3: true,
        colorScheme: kColorScheme,
        cardTheme:const CardThemeData().copyWith
        (
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric
          (
            horizontal: 16,vertical: 8
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          )
        ),
      ),
      theme: ThemeData().copyWith
      (
        //useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith
        (
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme:const CardThemeData().copyWith
        (
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric
          (
            horizontal: 16,vertical: 8
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          )
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 16,
            )
        )
      ),
      
      //themeMode: ThemeMode.system,//default
      home: Expenses(
        onAddExpense: (expense) {
          // You can leave this empty or print if needed
        },
      ),
    );
  }
}
      
