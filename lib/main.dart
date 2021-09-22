// import needed packages from Flutter
import 'package:flutter/material.dart';
import 'expense/expense.dart';
import 'meals/meals.dart';
import 'quiz/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/quiz-app': (context) => QuizApp(),
        '/expense-app': (context) => ExpenseApp(),
      },
      debugShowCheckedModeBanner: false,
      home: MealsApp(),
      // Builder(
      //   builder: (context) => GridView.count(
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     crossAxisCount: 2,
      //     children: [
      //       OutlinedButton(
      //         onPressed: () => Navigator.pushNamed(context, '/quiz-app'),
      //         child: Text("Quiz App"),
      //       ),
      //       OutlinedButton(
      //         onPressed: () => Navigator.pushNamed(context, '/expense-app'),
      //         child: Text("Expense App"),
      //       ),
      //     ],
      //   ),
      // ),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.blueGrey,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
                fontFamily: 'RobotoCondensed',
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
    );
  }
}
