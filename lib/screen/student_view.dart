import 'package:bbpi/repositories/student_repo.dart';
import 'package:flutter/material.dart';
import '../models/student_model.dart';
import '../repositories/teacher_repo.dart';

class StudentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Info'),
      ),
      body: FutureBuilder(
        future: StudentRepo.getStudent(),
        builder: (context, snapshot) {
          List<StudentModel> student = snapshot.data as List<StudentModel>;
          return ListView.builder(
              itemCount: student.length,
              itemBuilder: (context, index) {
                StudentModel studentModel = student.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          '${student.elementAt(index).img}',
                          color: Colors.green,
                        ),
                      ),
                      Text('${student.elementAt(index).studentinfo}'),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
