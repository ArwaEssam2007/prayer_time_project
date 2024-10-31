import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayertimeproject/Widgets/prayer_time_card.dart';
import 'package:provider/provider.dart';
import '../Model/prayer_time_model.dart';
import '../Providers/prayer_time_provider.dart';


class PrayerTimeScreens extends StatelessWidget {
  const PrayerTimeScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Prayer Time",style: TextStyle(fontSize: 40, color: Colors.white)),
      ),
      body: Consumer<prayerTimeProvider>(
        builder: (context, provider, child) {
          final prayerTimeModel = provider.Prayertimemodel;

          if (prayerTimeModel == null) {
            provider.fetchPrayerTime();
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.separated(
              itemBuilder: (context, index) {
                final prayerName = prayerTimeModel.data.keys;
                final prayerTime = prayerTimeModel.data.values;

                return prayerTimeCard(
                prayerName : prayerName.elementAt(index),
                 prayerTime : prayerTime.elementAt(index),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemCount: prayerTimeModel.data.length,
            );
          }
        },
      ),
    );
  }
}