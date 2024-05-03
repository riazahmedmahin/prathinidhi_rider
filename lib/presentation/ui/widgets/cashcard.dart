import 'package:flutter/material.dart';


class Cashcard extends StatelessWidget {
  const Cashcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
