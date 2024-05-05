import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/profile_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // Set the preferred height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //toolbarHeight: 55,
      backgroundColor: AppColors.primaryColor,
      title: Image.asset("assets/applogo.png",height: 120,width: 70,),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () {
              Get.to(ProfileScreen());
            },
            icon: Icon(Icons.menu, color: Colors.white, size: 30),
          ),
        ),
      ],
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(15.0), // Set your custom height here
        child: Container(),
      ),
    );
  }
}
