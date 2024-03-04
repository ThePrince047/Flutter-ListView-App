import 'package:flutter/material.dart';
import 'package:journal/studentPage.dart';

class Student {
  final String name;
  final String urlStudent;
  final String classS;
  final String rollno;

  const Student({
    required this.name,
    required this.urlStudent,
    required this.classS,
    required this.rollno,
  });
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Student> student = [
    Student(
      name: "Prince Solanki",
      urlStudent:
      "images/mine.png",
      classS: "SYBCA",
      rollno:"885",
    ),
    Student(
      name: "Jay Rangani",
      urlStudent:
      "images/jay.png",
      classS: "SYBCA",
      rollno:"877",
    ),
    Student(
      name: "Vansh Rathod",
      urlStudent:
      "images/vansh.png",
      classS: "SYBCA",
      rollno:"879",
    ),
    Student(
      name: "Deval Rathod",
      urlStudent:
      "images/deval.png",
      classS: "SYBCA",
      rollno:"878",
    ),
    Student(
      name: "Kush Desai",
      urlStudent:
      "images/kush.png",
      classS: "SYBCA",
      rollno:"811",
    ),
    Student(
      name: "Harshil Kathiyare",
      urlStudent:
      "images/harshil.png",
      classS: "SYBCA",
      rollno:"830",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "SDJ International College",
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontFamily: 'jellee',
            ),
          ),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: student.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(student[index].urlStudent),
              ),
              title: Text(
                student[index].name,
                style: TextStyle(fontFamily: 'jellee'),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => studentPage(student: student[index]),
                ));
             },
            ),
          ),
        ),
      ),
    );
  }
}
