import 'package:dropium/Screens/login_screen.dart';
import 'package:dropium/components/bar_graph.dart';
import 'package:dropium/components/detail_card.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Dropium",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.logout_outlined,
              color: Color.fromRGBO(151, 207,7, 1),),
            onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border:Border.all(color:Colors.white60)
                ),
                height:280,
                child: BarGraphComponent(),
              ),
              SizedBox(height: 10,),
              Text("Past 7 days report",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
              ),),
              Container(

                margin: EdgeInsets.fromLTRB(26,10, 20,10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(height: 10,width: 10,color:Color.fromRGBO(99, 153, 181, 1),),
                        SizedBox(width: 5,),
                        Text("Humidity",
                        style: TextStyle(
                          color: Colors.white60,
                        ),)
                      ],
                    ),
                    SizedBox(width: 9,),
                    Row(
                      children: [
                        Container(height: 10,width: 10,color:Color.fromRGBO(168,207,69, 1)),
                        SizedBox(width: 5,),
                        Text("Water level",
                          style: TextStyle(
                            color: Colors.white60,
                          ),)
                      ],
                    ),
                    SizedBox(width: 9,),
                    Row(
                      children: [
                        Container(height: 10,width: 10,color:Color.fromRGBO(140, 176, 46, 1.0),),
                        SizedBox(width: 5,),
                        Text("pH",
                          style: TextStyle(
                            color: Colors.white60,
                          ),)
                      ],
                    ),
                    SizedBox(width: 9,),
                    Row(
                      children: [
                        Container(height: 10,width: 10,color:Color.fromRGBO(81, 109, 138, 1.0),),
                        SizedBox(width: 5,),
                        Text("Turbidity",
                          style: TextStyle(
                            color: Colors.white60,
                          ),)
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  DetailCard("Humidity"," Water vapor in the air",25),
                  DetailCard("Water level","Elevation above sea level",300),
                  DetailCard("pH level","Acidity of water",10),
                  DetailCard("Turbidity", "Relative clarity of a liquid", 60)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
