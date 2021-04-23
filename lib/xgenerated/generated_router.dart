import 'package:instagram/core.dart';
import 'package:instagram/module/product_list/view/product_list_view.dart';
import 'package:instagram/module/employee_list/view/employee_list_view.dart';
//@EndOfImport

class GeneratedRouter {
  static const String loginView = '/module/login';
  static const String homeView = '/module/home';
  static const String accountView = '/module/account';
  static const String productlistView = '/module/product_list';
  static const String employeelistView = '/module/employee_list';
  //@EndOfRouterName

  static List<RouteItem> routers = [
    RouteItem(
      routeName: "/",
      layout: LoginView(),
    ),
    RouteItem(
      routeName: loginView,
      layout: LoginView(),
    ),
    RouteItem(
      routeName: homeView,
      layout: HomeView(),
    ),
    RouteItem(
      routeName: accountView,
      layout: AccountView(),
    ),
    RouteItem(
      routeName: productlistView,
      layout: ProductListView(),
    ),
    RouteItem(
      routeName: employeelistView,
      layout: EmployeeListView(),
    ),
    //@EndOfRouterItem
  ];
}
