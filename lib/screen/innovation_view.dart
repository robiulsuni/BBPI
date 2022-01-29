import 'package:bbpi/screen/innovation_details_view.dart';
import 'package:flutter/material.dart';
import '../models/innovation_model.dart';
import '../repositories/innovation_repo.dart';

class InnovationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Innovation Idea'),
      ),
      body: FutureBuilder(
          future: InnovationRepo.getInnovation(),
          builder: (context, snapshot) {
            List<InnovationModel> innovation =
                snapshot.data as List<InnovationModel>;
            return ListView.builder(
                itemCount: innovation.length,
                itemBuilder: (context, index) {
                  InnovationModel innovationModel = innovation.elementAt(index);
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InnovationDetailsView(
                                  innovation: innovationModel)));
                    },
                    child: Text('${innovation.elementAt(index).ideaTitel}'),
                  );
                });
          }),
    );
  }
}
