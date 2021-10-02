

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/auth/app.routes.dart';
import 'package:travel_app/auth/authentication.notifier.dart';
import 'package:travel_app/widgets/my_buttom_widget.dart';

class SignupView extends StatefulWidget {
   SignupView({Key key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController emailConroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void initState() {
    emailConroller = TextEditingController();
    passwordcontroller = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Colors.blue[900],
      ),
      body: 
      Container(
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/kopru.png"),
         fit: BoxFit.cover),
         borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: emailConroller,
                decoration:  InputDecoration(
                  hintText: "Enter email",
                  fillColor: Colors.grey[100],
                   filled: true, 
                   hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                     borderSide: BorderSide.none,
                     borderRadius: BorderRadius.circular(20.0)
                   )),
                   
              ),
               SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordcontroller,
                decoration:  InputDecoration(
                  hintText: "Enter password",
                  fillColor: Colors.grey[100],
                   filled: true, 
                   hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                     borderSide: BorderSide.none,
                     borderRadius: BorderRadius.circular(20.0)
                   )),
                   
              ),
               SizedBox(
                height: 30,
              ),
                 MyButtonWidget(
                   text: "Signup",
                   color: Colors.blue[900],
                   onPress: () async{
                     String email = emailConroller.text;
                           String password = passwordcontroller.text;
                           if (email.isNotEmpty && password.isNotEmpty) {
                             await authenticationNotifier.login(
                                 email: email, password: password);
                           } else {
                             ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Fill the credentials")));
                           }
                           Navigator.of(context).pushNamed(AppRoutes.LoginRoute);
                          
                   }),
                   TextButton(onPressed: () {}, child:  Text("Already have an account? Login",
                   style: TextStyle(color: Colors.white),))
            ])),
      ));
  }
}
 