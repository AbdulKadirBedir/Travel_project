class HotDestination{
  int id;
  String imagePath;
  String placeName;
  String  placeCount;

  HotDestination({this.id,this.imagePath,this.placeName,this.placeCount});

     HotDestination.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imagePath = json['imagePath'];
    placeName = json['placeName'];
    placeCount = json['placeCount'];

   }

      Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imagePath'] = imagePath;
    data['placeName'] = placeName;
    data['placeCount'] = placeCount;

    return data;
  }
}