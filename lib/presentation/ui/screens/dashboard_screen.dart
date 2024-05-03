
import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/navbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/cashcard.dart';
class dashBoardScreen extends StatefulWidget {
  const dashBoardScreen({super.key});

  @override
  State<dashBoardScreen> createState() => _dashBoardScreenState();
}

class _dashBoardScreenState extends State<dashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: navbuttom(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(" Notice : In this section a notice appear for all ride")),
                ),
                SizedBox(height: 20,),
                Cashcard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){},child: Text("Withdraw ",style: TextStyle(fontWeight: FontWeight.w800,color: AppColors.primaryColor,fontSize: 20),),)
                  ],
                ),
                SizedBox(height: 10,),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Order Status",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                Container(
                  height: 400,
                  width: 900,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                ),
                //MainBottomNavScreen()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () => {
        }, // Example: Open notifications screen
        child: Icon(Icons.home_filled,color: Colors.white,),
        elevation: 2.0,
        shape: CircleBorder(),// Elevation of the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}


