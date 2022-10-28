import 'package:dropium/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/image.png",
                height: 150,
                width: 130,),
                SizedBox(height:10 ,),
                Text("Dropium",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white
                ),),
                SizedBox(height:180 ,),
                Container(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(168, 207, 69, 1))
                      ),
                      onPressed: (){
                    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
                  }, child:Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text("Get Started",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                        ),
                      ),
                      SizedBox(width: 120,),
                      Icon(Icons.arrow_forward,
                          color: Colors.black
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
