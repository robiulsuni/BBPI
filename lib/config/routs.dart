import 'package:bbpi/constants/app_constants.dart';
import 'package:bbpi/screen/home_page.dart';
import '../screen/mujib_view.dart';
import '../screen/technology_view.dart';
import '../screen/teacher_view.dart';
import '../screen/student_view.dart';
import '../screen/innovation_view.dart';
import '../screen/job_view.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.home_page;
  static final routes = {
    AppConstant.home_page: (context) => HomePage(),
    AppConstant.mujib_view: (context) => MujibView(),
    AppConstant.technology_view: (context) => TechnologyView(),
    AppConstant.teacher_view: (context) => TeacherView(),
    // AppConstant.web_link_view: (context) => WebLinkView(),
    AppConstant.student_view: (context) => StudentView(),
    AppConstant.innovation_view: (context) => InnovationView(),
    AppConstant.job_view: (context) => JobView(),
  };
}
