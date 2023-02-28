import 'package:flutter/material.dart';
import 'package:route_argument/pages/show_field_model.dart';
import 'package:route_argument/routes/routes_name.dart';
import '../pages/field_page.dart';
import '../pages/page_home.dart';
import '../pages/show_field.dart';

class Routes {
  
  static Route<dynamic> generateRoutes(RouteSettings settings){
        switch (settings.name) {
          case RoutesName.homepage:
            return MaterialPageRoute(builder: (_) =>const  HomePage());
          case RoutesName.fieldpage:
            return MaterialPageRoute(builder: (_) =>  FieldPage());
          case '/showField':
            var arg = settings.arguments as Map<String, dynamic>;
            String email = arg['email'];
            String password = arg['password'];
            return MaterialPageRoute(builder: (_) => ShowField(
              email: email,
              password: password
              ),
              );
          case '/showFieldModel':
            final myRouteArguments = settings.arguments as MyRouteArguments;
            // String title1 = arg.    
            // String password = arg['password'];
            return MaterialPageRoute(builder: (_) => ShowFieldModel(title1: myRouteArguments.arg1, title2: myRouteArguments.arg2,)
              );

          default:
            return MaterialPageRoute(
                builder: (_) => const Scaffold(
                      body: Center(child: Text('No more routes')),
                ),
          );
        }
      }
}