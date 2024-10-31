class prayertimeModel
{
  Map<String , dynamic> data;
  prayertimeModel({required this.data});
  factory prayertimeModel.fromjson(Map<String , dynamic> json){
    return prayertimeModel(data: json["data"]["timings"]);
  }
}
