import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ramble/Home.dart';

class HomeChip extends StatelessWidget {
 List<String> page=['images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg','images/2.jpg'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: page.length,
      padding: EdgeInsets.only(left: 16,right: 16),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height ),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),physics: ClampingScrollPhysics(),
       itemBuilder: (BuildContext,int index){
       return  Container(
          height: 218,
           width: 128,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(page[index]),
                fit: BoxFit.cover,
              )),
          child: Text("hellllo"),
        );
      });
  }
}
