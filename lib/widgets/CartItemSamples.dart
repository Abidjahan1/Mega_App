import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemsSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        for (int i=1; i <5;i++)
        Container(
          height: 110,
          margin:EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Radio(
                value: "", 
                groupValue: "", 
                onChanged: (index){}
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/image$i.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Advertise Title",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),

                        ),
                        ),
                        Text("\$55",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:Color(0xFF4C53A5),

                        ),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Icon(Icons.delete,
                      color: Colors.red,
                      ),
                      Row(children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )

                            ]
                          ),
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 18,
                            ),
                         
                          

                        )
                      ],)
                    

                  ],),)
            ],
          ),
        )
      ]

    );
  }
}