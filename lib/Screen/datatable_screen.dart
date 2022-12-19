import 'package:flutter/material.dart';
import 'package:smartphone/model/student.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({Key? key}) : super(key: key);

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Student> lstStudent = [
    Student(fname: 'Aashutosh', age: 21),
    Student(fname: 'Ashok don', age: 22),
    Student(fname: 'Andrew', age: 35)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data table'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.blueGrey),
          border: TableBorder.all(color: Colors.black),
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('RollNo')),
            DataColumn(label: Text('Edit'))
          ],
          rows: lstStudent
              .map(
                (student) => DataRow(cells: [
                  DataCell(Text(student.fname!)),
                  DataCell(Text(student.age.toString())),
                  DataCell(IconButton(
                    onPressed: () {},icon: const Icon(Icons.edit),
                    
                  ))
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}
