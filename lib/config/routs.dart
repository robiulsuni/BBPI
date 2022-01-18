import 'package:bbpi/constants/app_constants.dart';
import 'package:bbpi/screen/home_page.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.homePage;
  static final routes = {
    AppConstant.homePage: (context) => HomePage(),
    // AppConstant.signinPage: (context) => SigninPage(),
    // AppConstant.signupPage: (context) => SignupPage(),
    // AppConstant.deptView: (context) => DepartmentView(),
    // AppConstant.deptDetailPage: (context) => DepartmentDetails(),
  };
}
