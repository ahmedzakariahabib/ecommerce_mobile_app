import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/HomeAppBar.dart';
import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';
 
 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           HomeAppBar(),
           Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular( 35),
              )
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular( 30),
                ),
                child:Row(
                  children: [
                    Container (
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:  "search here...",
                         )
                        
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            Container(
              alignment:  Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
             CategoriesWidget(),

             Container(
              alignment: Alignment.centerLeft,
              margin :EdgeInsets.symmetric(vertical:20, horizontal: 10),
              child: Text(
                "Best Selling",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,

                ),
              ),
             ),
             
             ItemsWidget(),

            ],
            ),
           )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Colors.blue,
        items: [
          Icon(Icons.home,
          size: 30,
          color: Colors.white,
          ),
          Icon(Icons.list,
          size: 30,
          color: Colors.white,
          ),
            Icon(Icons.home,
          size: 30,
          color: Colors.white,
          ),
        ],
      )
    );
  }
}