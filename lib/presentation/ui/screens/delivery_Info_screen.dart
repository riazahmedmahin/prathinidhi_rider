import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/geid_view.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class deliveryInfoScreen extends StatefulWidget {
  const deliveryInfoScreen({super.key});

  @override
  State<deliveryInfoScreen> createState() => _deliveryInfoScreenState();
}

class _deliveryInfoScreenState extends State<deliveryInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(),
          SizedBox(height: 50,),
          Text(" Which region you want to access for delivery?"),
          TextField(
            decoration: InputDecoration(
                   hintText: "Choose your region for deliveary  >"
            ),
          ),
          Text("Which vehicle you want to choose for your delivery?"),
          geid_view(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextButton(onPressed: () {  }, text: 'Next', color: AppColors.primaryColor, txtcolor: Colors.white,),
          )
        ],
      ),
    );
  }
}
