import 'package:flutter/material.dart';
import '../models/teacher_model.dart';
import '../repositories/teacher_repo.dart';
import '../screen/teacher_view.dart';

class TeacherDetailsView extends StatelessWidget {
  const TeacherDetailsView({Key? key, required this.teacher}) : super(key: key);
  final Teacher teacher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher'),
      ),
      body: ListView.builder(
        itemCount: teacher.teacherinfo.length,
        itemBuilder: (context, index) {
          final Teacherinfo teacherinfo = teacher.teacherinfo.elementAt(index);
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('${teacherinfo.img}'),
                Center(child: Text('${teacherinfo.name}')),
                Center(
                    child: Text(
                  '${teacherinfo.position}',
                  textAlign: TextAlign.center,
                )),
                Center(
                    child: Text(
                  '${teacherinfo.education}',
                  textAlign: TextAlign.center,
                )),
                Center(child: Text('${teacherinfo.number}')),
              ],
            ),
          );
        },
      ),
    );
  }
}
