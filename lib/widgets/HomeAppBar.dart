import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color:Colors.blue ,
          ),
          Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "DP Shop",
            style: TextStyle(
              fontSize: 23 ,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              ),
          ),
          ),
          Spacer(),

               InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size:32,
                color: Colors.blue,
              ),
             ),
          // badge(
          //   badgeColor:Colors.red,
          //   padding: EdgeInsets.all(7),
          //   badgeContent:Text(
          //     "3",
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   child: InkWell(
          //     onTap: (){},
          //     child: Icon(
          //       Icons.shopping_bag_outlined,
          //       size:32,
          //       color: Colors.blue,
          //     ),
          //   ), 
          // ),
        ],
      ),
    );
  }
}

 