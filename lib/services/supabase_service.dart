import 'package:supabase/supabase.dart';
import 'package:travel_app/auth/supabase.credentials.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/models/hotDestination.dart';
import 'package:travel_app/models/popular_rewieevs.dart';

class SupabaseService{
 final supabase = SupabaseClient(SupabaseCredentials.APIURL, SupabaseCredentials.APIKEY);


  Future<List<Destination>> getDestination() async {
    final response = await supabase.from("Destination").select().execute();

    if (response.status == 200) {
      var destinationList = <Destination>[];
      for (var element in (response.data as List)) {
        Destination destination = Destination.fromJson(element);
        destinationList.add(destination);
      }
      return destinationList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

  Future<List<HotDestination>> getHotDestination() async {
    final response = await supabase.from("HotDestination").select().execute();

    if (response.status == 200) {
      var hotDestinationList = <HotDestination>[];
      for (var element in (response.data as List)) {
        HotDestination hotDestination = HotDestination.fromJson(element);
        hotDestinationList.add(hotDestination);
      }
      return hotDestinationList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

  Future<List<PopularReviews>> getPopularReviews() async {
    final response = await supabase.from("PopularReviews").select().order('description', ascending: true).execute();

    if (response.status == 200) {
      var popularReviewsList = <PopularReviews>[];
      for (var element in (response.data as List)) {
        PopularReviews popularReviews = PopularReviews.fromJson(element);
        popularReviewsList.add(popularReviews);
      }
      return popularReviewsList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

  


   Data()async{
  final response = await supabase
      .from('PopularReviews')
      .select()
      
      .execute();}
}
