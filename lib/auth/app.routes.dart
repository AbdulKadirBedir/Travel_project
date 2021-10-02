
import 'package:travel_app/auth/login.dart';
import 'package:travel_app/auth/signup.dart';

class AppRoutes{
    static const String LoginRoute = "/login";
    static const String SingupRoute = "/Singup";

    static final routes = {
     LoginRoute : (context)=> LoginView(),
     SingupRoute : (context)=> SignupView()
    };

    
}
