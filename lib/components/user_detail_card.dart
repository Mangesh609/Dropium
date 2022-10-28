import 'package:flutter/material.dart';
class UserCard extends StatelessWidget {

  late String email;
  late String name ;
UserCard(@required this.name,@required this.email);
  @override
  Widget build(BuildContext context) {
    late double width = MediaQuery.of(context).size.width;
    return Container(
      width:width*0.9,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border:Border.all(color:Colors.white60)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(99, 153, 181, 1)
            ),),
          Text(email,
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(99, 153, 181, 1)
            ),
          ),
        ],
      ),
    );
  }
}
