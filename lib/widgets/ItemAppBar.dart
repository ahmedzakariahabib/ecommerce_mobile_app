import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              size: 50,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}