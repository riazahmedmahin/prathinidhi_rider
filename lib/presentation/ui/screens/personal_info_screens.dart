import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';

import '../widgets/textbutton.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  String? selectedAnswer = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Start your application for become our rider. Give"),
                Text("your phone number & password. It will use for"),
                Text("further account access."),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Phone number"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Phone number"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Your Age 18 or More than?")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio(
                      value: 'Yes',
                      groupValue: selectedAnswer,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio(
                      value: 'No',
                      groupValue: selectedAnswer,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextButton(
                  onPressed: () {},
                  text: 'Next',
                  color: AppColors.primaryColor,
                  txtcolor: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}