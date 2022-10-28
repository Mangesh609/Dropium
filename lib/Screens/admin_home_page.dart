import 'package:dropium/Screens/admin_login_screen.dart';
import 'package:dropium/components/user_detail_card.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AdminLoginScreen()), (route) => false);
          },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dashboard",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            SizedBox(height: 16,),
            UserCard("Mangesh", "rohithmangesh@gmail.com"),
            UserCard("Mangesh", "rohithmangesh@gmail.com"),
            UserCard("Mangesh", "rohithmangesh@gmail.com"),
            UserCard("Mangesh", "rohithmangesh@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }
}
