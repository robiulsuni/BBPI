import 'package:flutter/material.dart';
import '../models/technology_model.dart';
import '../repositories/technology_repo.dart';

class TechnologyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technology'),
      ),
      body: FutureBuilder(
          future: TechnologRepo.getTechnology(),
          builder: (context, snapshot) {
            List<Technologmodel> technology =
                snapshot.data as List<Technologmodel>;
            print(technology.length);
            print('technology.legnth');
            return ListView.builder(
              itemCount: technology.length,
              itemBuilder: (context, index) {
                Technologmodel technologmodel = technology.elementAt(index);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${technology.elementAt(index).computer}'),
                    Text('${technology.elementAt(index).departmentinfo}',textAlign: TextAlign.center,),
                    Text('${technology.elementAt(index).lab}'),
                    Image.asset('${technology.elementAt(index).img}'),
                    Text('${technology.elementAt(index).architecture}'),
                    Text('${technology.elementAt(index).electromedical}'),
                    Text('${technology.elementAt(index).refrigeration}'),
                  ],
              );
            }
          );
        },
      ),
    );
  }
}
