import 'package:dio/dio.dart';
import '../Model/prayer_time_model.dart';
class prayerTimeService{
 static Dio dio = Dio();
 static Future<prayertimeModel>getPrayerTime()async{
   try{
     const String url="http://api.aladhan.com/v1/timingsByCity?country=egypt&city=giza";
     Response response = await dio.get(url);
     if(response.statusCode ==200){
       return prayertimeModel.fromjson(response.data);
     }
     else{
       throw Exception("field load");
     }
   }
   catch(e){
     throw Exception(e.toString());
   }
 }
}