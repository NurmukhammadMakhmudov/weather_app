import 'package:flutter/material.dart';
import 'package:flutter_ramble/appBar.dart';
import 'package:flutter_ramble/Home.dart';

class Chips extends StatefulWidget {
  @override
  _ChipsState createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  dynamic backColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    List<bool> _isSelected=[false,false,false,false];
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 12,
            children: [
              ElevatedButton(
                onPressed: () {

                  

                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    Text(
                      'Hotel',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shadowColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isSelected[0]=true;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    Text(
                      'Hotel',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: _isSelected != null ? Colors.orange:Colors.black,
                    shadowColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              ElevatedButton(
                  onPressed: () { setState(() {
                    _isSelected[0]=true;
                  });},
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      Text(
                        'Hotel',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: _isSelected != null ? Colors.orange:Colors.black,
                      shadowColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20))))),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      Text(
                        'Hotel',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20))))),
              ElevatedButton(
                  onPressed: () {},
                  child: Chip(
                    elevation: 4,
                    avatar: Icon(Icons.local_fire_department_rounded),
                    label: Text(
                      'Popular',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20))))),
              ElevatedButton(
                  onPressed: () {},
                  child: Chip(
                    elevation: 4,
                    avatar: Icon(Icons.local_fire_department_rounded),
                    label: Text(
                      'Popular',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20))))),
              ElevatedButton(
                  onPressed: () {},
                  child: Chip(
                    elevation: 4,
                    avatar: Icon(Icons.local_fire_department_rounded),
                    label: Text(
                      'Popular',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.white,
                      padding: EdgeInsets.all(-10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))))
            ],
          ),
        ],
      ),
    );
  }

  void changeColor() {
    setState(() {
      backColor = Colors.orange;
    });
  }
}
