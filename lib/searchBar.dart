import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 16,right: 16),
      child: TextField(
        style: Theme.of(context).textTheme.headline2,
       decoration: InputDecoration(

          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
           labelText: 'Search',

       ),
      ),
    );
  }

}