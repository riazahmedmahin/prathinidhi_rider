import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';

import '../widgets/textbutton.dart';

class ConfrimLoginScreen extends StatelessWidget {
  const ConfrimLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBox(height: 10,),
          header(),
          Text("lotie"),
          SizedBox(height: 300,),
          Text(" Your Application Under Review.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),
          Text("Contact to our office with full documents",style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextButton(onPressed: () {  }, color: AppColors.primaryColor, text: 'Contact our Support team', txtcolor: Colors.white,),
          )



        ],
      ),
    );
  }
}
