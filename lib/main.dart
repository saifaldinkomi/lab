import 'package:first/student.dart';
import 'package:first/student_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Student> students = [
  Student(
      name: 'Mutasem Alheeh',
      id: '03/0177',
      phone: '0599111111',
      address: 'Hebron'),
  Student(
      name: 'Ahmad Ali', id: '15/5468', phone: '0598456123', address: 'Nablus'),
  Student(
      name: 'Mariam Salem',
      id: '20/1025',
      phone: '0569555555',
      address: 'Hebron'),
  Student(
      name: 'Hana Ali',
      id: '21/1029',
      phone: '0566111233',
      address: 'Rammallah'),
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("saifaldin"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => StudentCard(
          std: students[index],
          deleteStudent: () {
            setState(() {
              students.removeAt(index);
            });
          },
        ),
      ),
    );
  }
}
