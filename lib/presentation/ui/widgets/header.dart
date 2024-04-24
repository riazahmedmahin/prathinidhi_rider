import 'package:flutter/material.dart';

import '../utility/app_color.dart';


class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
          color: AppColors.primaryColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Become a Rider',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {
              // Handle close action
            },
          ),
        ],
      ),
    );
  }
}
