import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/order_verify.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class OrderDeliveryScreen extends StatefulWidget {
  const OrderDeliveryScreen({super.key});

  @override
  State<OrderDeliveryScreen> createState() => _OrderDeliveryScreenState();
}

class _OrderDeliveryScreenState extends State<OrderDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 617,
          ),
          commision
        ],
      ),
    );
  }

  Container get commision {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
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
    );
  }
}
