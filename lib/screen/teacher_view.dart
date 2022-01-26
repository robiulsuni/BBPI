import 'package:flutter/material.dart';
import '../models/teacher_model.dart';
import '../repositories/teacher_repo.dart';
import '../screen/teacher_details_view.dart';

class TeacherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher'),
      ),
      body: FutureBuilder(
        future: TeacherRepo.getTeacher(),
        builder: (context, snapshot) {
          List<Teacher> teacher = snapshot.data as List<Teacher>;

          return ListView.builder(
              itemCount: teacher.length,
              itemBuilder: (context, index) {
                Teacher teacherinfo = teacher.elementAt(index);
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TeacherDetailsView(teacher: teacherinfo)));
                    },
                    child: Text('${teacher.elementAt(index).department}'));
              });
        },
      ),
    );
  }
}
