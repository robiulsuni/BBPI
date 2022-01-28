import 'package:bbpi/models/technology_model.dart';
import 'package:flutter/material.dart';

class TechnologyDetailsView extends StatelessWidget {
  const TechnologyDetailsView({Key? key, required this.technologmodel})
      : super(key: key);
  final Technologmodel technologmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technology Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('${technologmodel.img}',color: Colors.green,),
              Center(child: Text('${technologmodel.computer}')),
              Center(child: Text('${technologmodel.departmentinfo}')),
              Center(child: Text('${technologmodel.lab}')),
            ],
          ),
        ),
      ),
    );
  }
}
