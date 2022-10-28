import 'package:dropium/Screens/user_home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   late double width = MediaQuery.of(context).size.width;
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool ishidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center ,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 40, 50,2),
                    child: Image.asset("images/logo.png",
                      height: 250,
                      width: width/1.6,
                    ),
                  ),
                  SizedBox(width: width/60,),
                  Text("Welcome back!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily:"Brand Bold" ,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(30,5,30,10),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            controller: emailTextEditingController,
                            keyboardType:TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            style: TextStyle(
                              fontSize:17.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            controller: passwordTextEditingController,
                            obscureText: ishidden,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                              suffixIcon: InkWell(
                                onTap: unhidetext,
                                child: Icon(Icons.visibility),
                              ),
                            ),
                            style: TextStyle(
                              fontSize:17.0,
                              color: Colors.white
                            ),

                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(168, 207, 69, 1),),
                            ),
                            onPressed:(){
                             if(emailTextEditingController.text != "" && passwordTextEditingController.text !="" ){
                               FirebaseAuth.instance.signInWithEmailAndPassword(email:emailTextEditingController.text, password: passwordTextEditingController.text).then((value){
                                 Fluttertoast.showToast(msg: "Login Successfull");
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHomeScreen()));
                               }).onError((error, stackTrace){
                                 print("Error ${error.toString()}");
                               });
                             }
                             else{
                               Fluttertoast.showToast(msg: "Invalid Email/Password ");
                             }
                            } ,
                            child: Text("Login",
                              style: TextStyle(
                                fontSize: 18,
                              ),),

                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:16 ,
                              ),
                            ),
                            TextButton(
                              onPressed:(){
                                Navigator.pushNamed(context, '/register');
                              } ,
                              child:Text("Register",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Are you an admin?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:14,
                              ),
                            ),
                            TextButton(
                              onPressed:(){
                                Navigator.pushNamed(context, '/admin_login');
                              } ,
                              child:Text("Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],

              ),
            )),
      ),

    );
  }
  void unhidetext() {

    setState(() {
      ishidden=!ishidden;
    });
  }
}
