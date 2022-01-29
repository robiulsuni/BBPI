import 'package:flutter/material.dart';
import '../models/job_model.dart';
import '../repositories/job_repo.dart';

class JobView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Job')),
      body: FutureBuilder(
          future: JobRepo.getJob(),
          builder: (context, snapshot) {
            List<JobModel> job = snapshot.data as List<JobModel>;
            return ListView.builder(
                itemCount: job.length,
                itemBuilder: (context, index) {
                  JobModel jobModel = job.elementAt(index);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('${job.elementAt(index).img}'),
                      Text('${job.elementAt(index).jobdefinition}'),
                    ],
                  );
                });
          }),
    );
  }
}
