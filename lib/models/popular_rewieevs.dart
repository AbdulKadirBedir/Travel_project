class PopularReviews{
  int id;
  String img;
  String name;
  String tarih;
  String description;
  PopularReviews({this.id,this.img,this.name,this.tarih,this.description});


  PopularReviews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    name = json['name'];
    tarih = json['tarih'];
    description = json['description'];
  }

   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['img'] = img;
    data['name'] = name;
    data['tarih'] = tarih;
    data['description'] = description;

    return data;
  }
}