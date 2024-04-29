import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
class dashBoardScreen extends StatefulWidget {
  const dashBoardScreen({super.key});

  @override
  State<dashBoardScreen> createState() => _dashBoardScreenState();
}

class _dashBoardScreenState extends State<dashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
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
                Container(
                  height: 150,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 40,),
                            Text(" Pratinidhi Cash",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            Text("00 BDT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
                          ],
                        ),
                        Icon(Icons.add_card,size: 50,),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){},child: Text("Withdraw ",style: TextStyle(fontWeight: FontWeight.w800,color: AppColors.primaryColor,fontSize: 22),),)
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
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
