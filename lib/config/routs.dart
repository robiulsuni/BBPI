import 'package:bbpi/constants/app_constants.dart';
import 'package:bbpi/screen/home_page.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.home_page;
  static final routes = {
    AppConstant.home_page: (context) => HomePage(),
    // AppConstant.signinPage: (context) => SigninPage(),
    // AppConstant.signupPage: (context) => SignupPage(),
    // AppConstant.deptView: (context) => DepartmentView(),
    // AppConstant.deptDetailPage: (context) => DepartmentDetails(),
  };
}
