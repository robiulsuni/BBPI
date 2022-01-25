import 'package:flutter/material.dart';
import '../models/mujib_model.dart';
import '../repositories/mujib_repo.dart';

class MujibView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mujib Corner'),
      ),
      body: FutureBuilder(
        future: MujibRepo.getMujib(),
        builder: (context, snapshot) {
          List<MujibModel> mujib = snapshot.data as List<MujibModel>;
          print(mujib.length);
          print('mujib.length');
          return ListView.builder(
              itemCount: mujib.length,
              itemBuilder: (context, index) {
                MujibModel mujibModel = mujib.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('${mujib.elementAt(index).img}'),
                      Text(
                        '${mujib.elementAt(index).mujibTital}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('${mujib.elementAt(index).mujibDefinition}'),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
