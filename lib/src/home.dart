import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Text(
                    'DropDown',
                    style: TextStyle(
                      backgroundColor: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dropdown');
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Text(
                    'Disponivel',
                    style: TextStyle(
                      backgroundColor: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/value');
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Text(
                    'DESPESAS',
                    style: TextStyle(
                      backgroundColor: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/value');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
