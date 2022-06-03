import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/services.dart';

class ValuePage extends StatefulWidget {
  @override
  _DateTimeState createState() => _DateTimeState();
}

class _DateTimeState extends State<ValuePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2022, 1),
        lastDate: DateTime(2023, 5));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  //coisas para o dropdown
  final List<String> items = [
    'Investimento',
    'Comida',
    'Outros',
  ];
  String? selectedValue;
  String valor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 250, 251),
        shadowColor: Colors.blue,
        title: Text(style: TextStyle(color: Colors.blue), 'Despesas'),
      ),
      body: Column(
        children: <Widget>[
          Center(
              child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 135.0, 0.0, 0.0),
                child: Text("${selectedDate.toLocal()}".split(' ')[0]),
              ),
            ],
          )),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () => _selectDate(context),
            child: Text('Selecione a Data'),
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomDropdownButton2(
            hint: 'Selecione o Item',
            dropdownItems: items,
            value: selectedValue,
            onChanged: (value) {
              setState(
                () {
                  selectedValue = value;
                },
              );
            },
          ),
          new TextField(
            decoration: new InputDecoration(labelText: "Enter your number"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ],
      ),
    );
  }
}
