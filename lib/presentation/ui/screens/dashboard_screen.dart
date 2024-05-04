
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
                //SizedBox(height: 10,),
                Container(
                  height: 30,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(" Notice : In this section a notice appear for all ride")),
                ),
                Divider(
                  height: 40, // Adjust the height of the divider
                  thickness: 5, // Specify the thickness of the divider
                  color: Colors.grey.shade300, // Set the color of the divider
                  indent: 10, // Set the left indent of the divider
                  endIndent: 10, // Set the right indent of the divider
                ),
                //SizedBox(height: 15,),
                Cashcard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){},child: Text("Withdraw ",style: TextStyle(fontWeight: FontWeight.w800,color: AppColors.primaryColor,fontSize: 20),),)
                  ],
                ),

                Divider(
                  //height: 50, // Adjust the height of the divider
                  thickness: 5, // Specify the thickness of the divider
                  color: Colors.grey.shade300, // Set the color of the divider
                  indent: 10, // Set the left indent of the divider
                  endIndent: 10, // Set the right indent of the divider
                ),
                //SizedBox(height: 10,),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Order Status",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)),
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


