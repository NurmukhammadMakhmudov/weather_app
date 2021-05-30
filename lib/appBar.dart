import 'package:flutter/material.dart';



class appBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(

          padding: const EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 20),
          child: Container(
            height: 65,
            child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ramble",style: Theme.of(context).textTheme.headline1,),
                        Text("Make yourself an unforgettable"
                            "\n adventure!",style: Theme.of(context).textTheme.bodyText1,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          constraints: BoxConstraints.expand(height: 50,width: 50),
                          decoration:
                          BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                              image: AssetImage('images/BarPhoto.jpg'),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                       Row(
                         children: [
                           Icon(Icons.person,size: 10,color: Color(0xff919191)),
                           Text('Profile',style: Theme.of(context).textTheme.headline2,),
                         ],
                       )

                      ],
                    )



                   ],
            ),
          ),


      ),
    );
  }

}