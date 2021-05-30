import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ramble/ElevatedBitton.dart';
import 'package:flutter_ramble/homeChip.dart';
import 'package:flutter_ramble/searchBar.dart';
import 'package:flutter_ramble/selected_index_model.dart';
import 'package:provider/provider.dart';


import 'appBar.dart';


class Home extends StatelessWidget{
  const Home({Key key}):super(key: key);

  static List<Widget> pages =<Widget>[
    Container(color:Colors.blue),
    Container(color:Colors.blue),
    SingleChildScrollView(
      child: Column(
        children: [
          appBar(),
          SearchBar(),
          ElevatedButtonClass(),
          HomeChip(),
        ],
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    final index=Provider.of<SelectedIndexModel>(context);

    return Scaffold(

        body: pages[index.currentIndex],


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:Theme.of(context).textSelectionColor ,
          currentIndex: index.currentIndex,
          onTap:index.onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 35,),
              label: ' ',
              activeIcon: Icon(Icons.search,color: Colors.orange,size: 35,)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,size: 35,),
              label: ' ',
                activeIcon: Icon(Icons.calendar_today,color: Colors.orange,size: 35,)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,size: 35,),
                label: '  ',
                activeIcon: Icon(Icons.home_filled,color: Colors.orange,size: 35,)
            ),
          ],
        ),

    );

  }



}