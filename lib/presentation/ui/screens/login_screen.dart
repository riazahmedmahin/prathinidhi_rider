import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/login_confirm.dart';

import '../utility/app_color.dart';
import '../widgets/textbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200,),
              Text("lotie"),
              Text("Login",style:Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 20,),
              TextField(
                
                decoration: InputDecoration(
                  hintText: "Phone number"
                      
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: "Password",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text("Forget password?",style: TextStyle(color: Colors.blue,fontSize: 15),)
                ],
              ),
              SizedBox(height: 30,),
              CustomTextButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfrimLoginScreen()));
              }, text: 'Next', txtcolor: Colors.white, color: AppColors.primaryColor,),
            ],
          ),
        ),
      ),
    );
  }
}
