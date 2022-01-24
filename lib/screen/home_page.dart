import 'dart:ui';

import 'package:bbpi/global_widget/my_drware.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('BBPI'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 2.50, sigmaY: 2.50),
                child: Image.asset(
                  'assets/images/_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Mujib Corner',
                          color: Colors.green,
                          // iconData: Icons.computer,
                          onTab: () {
                            // Navigator.pushNamed(context, AppConstant.deptView);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Technology',
                          color: Colors.green,
                          image: 'assets/icon/technology.png',
                          // iconData: Icons.architecture,
                          onTab: () {
                            // Navigator.pushNamed(
                            // context, AppConstant.doctorPage);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Teachers & Staffs',
                          color: Colors.green,
                          image: 'assets/icon/teacher.png',
                          // iconData: Icons.electrical_services,
                          onTab: () {
                            // Navigator.pushNamed(
                            // context, AppConstant.teacherPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Students Info',
                          color: Colors.green,
                          // iconData: Icons.ac_unit,
                          image: 'assets/icon/student.png',
                          onTab: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Innovation Corner',
                          color: Colors.green,
                          image: 'assets/icon/innovation.png',
                          // iconData: Icons.electrical_services,
                          onTab: () {
                            // Navigator.pushNamed(
                            // context, AppConstant.teacherPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Job Cell',
                          color: Colors.green,
                          image: 'assets/icon/job.png',
                          // iconData: Icons.ac_unit,
                          onTab: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Notice',
                          color: Colors.green,
                          image: 'assets/icon/notice.png',
                          // iconData: Icons.electrical_services,
                          onTab: () {
                            // Navigator.pushNamed(
                            // context, AppConstant.teacherPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Results',
                          color: Colors.green,
                          image: 'assets/icon/results.png',
                          // iconData: Icons.ac_unit,
                          onTab: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Gallery',
                          color: Colors.green,
                          image: 'assets/icon/gallery.png',
                          // iconData: Icons.electrical_services,
                          onTab: () {
                            // Navigator.pushNamed(
                            // context, AppConstant.teacherPage);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'Downloads',
                          color: Colors.green,
                          image: 'assets/icon/downloead.png',
                          // iconData: Icons.ac_unit,
                          onTab: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    // @required IconData? iconData,
    @required VoidCallback? onTab,
    @required String? image,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 120.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'image',
              height: 20.0,
              width: 20.0,
            ),
            // Icon(
            //   iconData,
            //   size: 50.0,
            // ),
            Text(
              '$name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
