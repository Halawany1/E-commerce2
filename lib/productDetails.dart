// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Detials extends StatefulWidget{
  @override
  State<Detials> createState() => _DetialsState();
}

class _DetialsState extends State<Detials> {

  bool star=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.grey[300],),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 16,
        items: [
          BottomNavigationBarItem(label: "",icon: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PRICE",style: TextStyle(color: Colors.grey),),SizedBox(height: 6,)
                ,Text("\$1500",style: TextStyle(color: Colors.green,fontSize: 20),)
              ],
            ),
          )
          ),
          BottomNavigationBarItem(icon: Container(
            width: 140,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
              ,color: Colors.green,
            ),
              child: MaterialButton(onPressed: (){},child: Text("ADD",style: TextStyle(color: Colors.white),))),label: "")

        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              width: double.infinity,
                height: 270,
                child: Stack(
                  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: NetworkImage("https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_108530_al&qlt=85&web_exclusive=1&qlt=92&wid=320&hei=320&v=1&fmt=auto")),
      ],
    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90,left: 10),
                    child: Row(
mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.arrow_back_ios,color: Colors.grey[600],size: 20,),SizedBox(width: 300,),FloatingActionButton(onPressed: (){
                        setState(() {

                        });
                        star=false;
                      },child: star?Icon(Icons.star_border_purple500_sharp,color: Colors.black,):Container(child: Icon(Icons.star_border_purple500_sharp,color: Colors.yellowAccent,)),backgroundColor: Colors.white,mini: true,)],),
                  )
                ],)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text("Nike Dri-FIT Long Sleeve",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
            )
            ,
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [
                Row(children: [
                  Container(
                    width: 100,height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300)
                            ,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Size",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      )),
                  Container(
                      width: 60,height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                          ,borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("XL",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ))
                ],),
                SizedBox(width: 45,),
                Row(
                  children: [
                    Container(
                      width:160,height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Colour",style: TextStyle(color: Colors.grey,fontSize: 16),)
                          ,SizedBox(width: 50,),
                         Container(
                           width: 30,
                             child: CircleAvatar(backgroundColor: Colors.black,))
                        ],
                      ),
                    ),
                  ],
                )
              ],),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            )
            ,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text("Nike Dri-FIT Long Sleeve is polyseter fabric design to help you keep dry so you can more comfortably work harder, logner. Nike Dri-FIT Long Sleeve is polyseter fabric design to help you keep dry so you can more comfortably work harder, logner",
                  style: TextStyle(color: Colors.grey[600],height: 2),),
              ),
            )
          ],
        ),
      ),
    );
  }
}