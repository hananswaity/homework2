import 'package:flutter/material.dart';
import 'package:homework2/StudentCard.dart';
import 'package:homework2/Student.dart';
void main() {
  runApp(const MyApp());
}
List<Student> students=[
  Student('181122', 'Ahmad Ali '),
  Student('188515', 'Randa Hatem '),
  Student('181963', 'Ali Mohammad '),
  Student('181259', 'hana sameh '),
];
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('center'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text('this is student list'),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context,index) => StudentCard(students[index]),
                    itemCount: students.length ,
                ),
            )
          ],

        ),
      ),
    );
  }
}

