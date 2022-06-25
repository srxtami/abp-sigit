import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Transactions',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Designation',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Mohit')),
              DataCell(Text('23')),
              DataCell(Text('Associate Software Developer')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Akshay')),
              DataCell(Text('25')),
              DataCell(Text('Software Developer')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Deepak')),
              DataCell(Text('29')),
              DataCell(Text('Team Lead ')),
            ],
          ),
        ],
      ),
    );
  }
}
