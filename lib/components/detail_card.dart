import 'package:flutter/material.dart';
class DetailCard extends StatelessWidget {

  late String title;
  late String subtitle;
  late double value ;
  DetailCard(@required this.title,@required this.subtitle , @required this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border:Border.all(color:Colors.white60)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 195,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(99, 153, 181, 1)
                  ),),
                SizedBox(height: 10,),
                Text(subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 153, 181, 1)
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 2,),
          Text(value.toString(),
            style: TextStyle(
                fontSize:16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(99, 153, 181, 1)
            ),),
          SizedBox(width:4,),
          Text(units(title),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(99, 153, 181, 1)
            ),),

        ],
      ),
    );
  }
}

String units(title){
  late String unit;
  if(title == "Humidity"){
    unit = "g.m-3";
  }
  else if(title == "Water level"){
    unit = "cfs" ;
  }
  else if(title == "pH level"){
    unit = "units";
  }
  else{
    unit = "NTU";
  }
  return unit;
}
