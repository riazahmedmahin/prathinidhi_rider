import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 400,
              ),
              Text("lotie"),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome to",
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Pratinidhi rider app",
                      style: Theme.of(context).textTheme.titleLarge)),
              SizedBox(
                height: 20,
              ),
              container(
                text: 'Continue as a rider',
                boxcolor: Colors.grey.shade300,
                textcolor: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              container(
                  text: "Become a rider",
                  boxcolor: AppColors.primaryColor,
                  textcolor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

class container extends StatelessWidget {
  container(
      {super.key,
      required this.text,
      required this.boxcolor,
      required this.textcolor});
  final Color textcolor;
  final String text;
  final Color boxcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: boxcolor,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: textcolor),
      )),
    );
  }
}
