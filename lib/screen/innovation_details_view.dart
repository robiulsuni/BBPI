import 'package:flutter/material.dart';
import '../models/innovation_model.dart';
import '../repositories/innovation_repo.dart';
import '../screen/innovation_view.dart';

class InnovationDetailsView extends StatelessWidget {
  const InnovationDetailsView({Key? key, required this.innovation})
      : super(key: key);
  final InnovationModel innovation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Innovation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('${innovation.img}'),
              )),
              Center(
                  child: Center(child: Text('${innovation.ideaDescription}'))),
            ],
          ),
        ),
      ),
    );
  }
}
