import 'package:bbpi/constants/app_constants.dart';
import 'package:bbpi/screen/home_page.dart';
import '../screen/mujib_view.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.home_page;
  static final routes = {
    AppConstant.home_page: (context) => HomePage(),
    AppConstant.mujib_view: (context) => MujibView(),
    // AppConstant.signupPage: (context) => SignupPage(),
    // AppConstant.deptView: (context) => DepartmentView(),
    // AppConstant.deptDetailPage: (context) => DepartmentDetails(),
  };
}
