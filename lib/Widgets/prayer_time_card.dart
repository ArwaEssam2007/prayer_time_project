import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prayerTimeCard extends StatelessWidget {
  const prayerTimeCard({required this.prayerName , required this.prayerTime});

  @override
  final String prayerName;
  final String prayerTime;
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card (
        margin: EdgeInsets.all(15),
        shadowColor: Colors.black,
        elevation: 8,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(prayerName ,style: TextStyle(fontSize: 25),),
                SizedBox(width: 20,),
                Text(prayerTime ,style: TextStyle(fontSize: 20), ),
              ],
          ),
        ),
      ),
    );
  }
}
