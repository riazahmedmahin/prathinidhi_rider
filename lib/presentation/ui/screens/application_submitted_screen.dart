import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/dashboard_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class ApplicationSubmittedScreen extends StatelessWidget {
  const ApplicationSubmittedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    width: 400,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.done,
                          size: 50,
                        ),
                        Text(
                          "Your Application has been submitted.",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text("Your application under review.")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "Welcome to Protinidhi Family. To become a part of our family please contact in our office from Saturday to Thursday (Time 9 am- 6 pm )"),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Please bring those document :")),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "1. Personal vehicle ( Cycle or Motorbike ). You can submit an image of Vehicle in printed paper."),
                      Text("2. Android Smartphone neededS"),
                      Text(
                          "3. NID or Birth Certificate ( Original or photocopy"),
                      Text(
                          "4. Your Nominee NID Card or Birth Certificate ( Original or photocopy"),
                      Text("5. Driving license for Motorbike"),
                      Text("6. Driving license for Motorbike"),
                      Text("7. 1 passport size photo"),
                      SizedBox(
                        height: 50,
                      ),
                      Text("Location : 1st building, OR Nijam Road Gec"),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Whatsapp: +880 1317 68 66 95"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => dashBoardScreen()));
                    },
                    color: AppColors.primaryColor,
                    text: 'Done',
                    txtcolor: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
