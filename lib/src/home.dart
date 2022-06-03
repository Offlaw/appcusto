import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.blue,
        title: Text(style: TextStyle(color: Colors.blue), 'Home'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(
                horizontal: 100.0,
                vertical: 15.0,
              ),
              child: Container(
                width: 500.0,
                height: 30.0,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextButton(
                    child: Text(
                      'Inserir',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/value');
                    },
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(
                horizontal: 100.0,
                vertical: 5.0,
              ),
              child: Container(
                width: 500.0,
                height: 30.0,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextButton(
                    child: Text(
                      'Consultar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/dropdown');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
