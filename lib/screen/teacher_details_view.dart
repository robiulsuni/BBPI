import 'package:flutter/material.dart';
import '../models/teacher_model.dart';

class TeacherDetailsView extends StatelessWidget {

  const TeacherDetailsView({Key? key, required this.teacher}) : super(key: key);
  final Teacher teacher;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teacher'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text('${teacher.teacherinfo}'),),
          ],
        ),
      ),
    );
  }
}
