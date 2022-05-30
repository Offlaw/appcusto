import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/value.dart';
import 'src/dropdown.dart';

void main() => runApp(AppCusto());

class AppCusto extends StatelessWidget {
  const AppCusto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/value': (context) {
          var valuePage = ValuePage();
          return valuePage;
        },
        '/dropdown': (context) {
          var dropPage = DropDownPage();
          return dropPage;
        }
      },
      initialRoute: '/home',
    );
  }
}
