import 'package:flutter/material.dart';

class ElevatedButtonClass extends StatefulWidget {
  _ElevatedButtonClass createState() => _ElevatedButtonClass();
}

class _ElevatedButtonClass extends State<ElevatedButtonClass> {
  List<RadioModel> sample = [];
  @override
  void initState() {
    super.initState();
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(RadioModel(
        lableOf: 'Place', iCon: Icon(Icons.place), isSelected: false));
    sample.add(RadioModel(
        lableOf: 'Travel',
        iCon: Icon(Icons.airplanemode_active),
        isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
    sample.add(
        RadioModel(lableOf: 'Home', iCon: Icon(Icons.home), isSelected: false));
  }

  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 70),
      padding: EdgeInsets.all(12),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: sample.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  sample.forEach((element) {
                    element.isSelected = false;
                    sample[index].isSelected = true;
                  });
                });
              },
              child: RadioButtonCreater(sample[index]),
            );
          }),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String lableOf;
  final Widget iCon;

  RadioModel({this.lableOf, this.iCon, this.isSelected});
}

class RadioButtonCreater extends StatelessWidget {
  final RadioModel _item;
  RadioButtonCreater(this._item);
  @override
  Widget build(BuildContext context) {
    return
       Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: _item.isSelected ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(width: 0.8, color: Colors.black)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _item.iCon,
            Text(
              _item.lableOf,
              style: TextStyle(
                  color: _item.isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),

    );
  }
}
