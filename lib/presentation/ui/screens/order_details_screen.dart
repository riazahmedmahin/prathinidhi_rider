import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/order_verify.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ),
          commision_card
        ],
      ),
    );
  }

  Container get commision_card {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Your Commission",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900)),
            Text(
              "100 BDT",
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: CustomTextButton(
                onPressed: () {
                  Get.to(OrderVerifyScreen());
                },
                text: 'Accept',
                color: Colors.white,
                txtcolor: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
