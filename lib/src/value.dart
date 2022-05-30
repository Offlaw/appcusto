import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banco de Despesas'),
      ),
      body: Column(
        children: <Widget>[
          Center(
              child: Column(
            children: [
              Text("${selectedDate.toLocal()}".split(' ')[0]),
            ],
          )),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
          CustomDropdownButton2(
              hint: 'Select Item',
              dropdownItems: items,
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              })
        ],
      ),
    );
  }
}
