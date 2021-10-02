import 'package:flutter/material.dart';
import 'package:travel_app/Home/colors.dart';
import 'package:travel_app/Home/style.dart';
import 'package:travel_app/models/popular_rewieevs.dart';
import 'package:travel_app/services/supabase_service.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 var popularListItem = <PopularReviews>[];
 
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData()async{
    popularListItem = await SupabaseService().getPopularReviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(300), bottomRight: Radius.circular(300)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.darkSecondaryColor,
              AppColor.lightTertiaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60, left: 200),
                  child: Text(
                    "Popular Reviews  ${popularListItem.length}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 60,left: 5),
                  child: Icon(Icons.star_border_outlined,color: Colors.amber[800],)
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 90),
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 25,
                  right: 25,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage('assets/images/man.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PrimaryText(
                                    text: 'Arjun Unni',
                                    size: 16,
                                  ),
                                  PrimaryText(
                                      text: 'Jan 25',
                                      size: 13,
                                      color: Colors.white24),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              PrimaryText(
                                  text:
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white38),
                            ],
                          ))
                    ])),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  )
                ],
              ),
            ),
               Container(
                margin: EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 25,
                  right: 25,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage('assets/images/ruskiz.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PrimaryText(
                                    text: 'Maria Lopez',
                                    size: 16,
                                  ),
                                  PrimaryText(
                                      text: 'Jan 25',
                                      size: 13,
                                      color: Colors.white24),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              PrimaryText(
                                  text:
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white38),
                            ],
                          ))
                    ])),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.amber[800],
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
