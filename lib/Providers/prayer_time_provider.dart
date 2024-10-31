import 'package:flutter/cupertino.dart';
import 'package:prayertimeproject/Service/api_service.dart';

import '../Model/prayer_time_model.dart';

class prayerTimeProvider extends ChangeNotifier
{
  prayertimeModel? Prayertimemodel;
  Future<void> fetchPrayerTime()async{
    Prayertimemodel = await prayerTimeService.getPrayerTime();
        notifyListeners();
  }
}