import 'package:flutter/material.dart';
import 'package:journal/main.dart';

class studentPage extends StatelessWidget{
  final Student student;
  const studentPage({
    Key? key,
    required this.student,
  }):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SDJ International College",style: TextStyle(fontFamily: 'jellee',fontSize: 20,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children:<Widget> [
            Image.asset(
              student.urlStudent,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              student.name,
              style: TextStyle(fontFamily: 'jellee',fontSize: 40),
            ),
            Text(
              student.classS,
              style: TextStyle(fontFamily: 'jellee',fontSize: 30),
            ),
            Text(
              student.rollno,
              style: TextStyle(fontFamily: 'jellee',fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}