import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropium/Screens/login_screen.dart';
import 'package:dropium/Screens/user_home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 80, 50, 0),
                    child: Image.asset("images/logo.png",
                      height: 150,
                      width: 200,
                    ),
                  ),
                  Text("Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: "Brand Bold",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 5, 20, 10),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            controller: nameTextEditingController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(),
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),

                            ),
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            controller: emailTextEditingController,
                            keyboardType: TextInputType.emailAddress,
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
                              fontSize: 17.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            controller: phoneTextEditingController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(),
                              hintText: "Mobile",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            controller: passwordTextEditingController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(168, 207, 69, 1))
                            ),
                            onPressed: () async{
                              if (!emailTextEditingController.text.contains(
                                  "@")) {
                                Fluttertoast.showToast(msg: " Invaild Email ");
                              }
                              else
                              if (passwordTextEditingController.text.length <
                                  5) {
                                Fluttertoast.showToast(
                                    msg: "Password must be atleast 5 characters");
                              }
                              else
                              if (emailTextEditingController.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Email can't be empty");
                              }
                              else if (nameTextEditingController.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Name can't be empty");
                              }
                              else
                              if (passwordTextEditingController.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Password can't be empty");
                              }
                              else
                              if (phoneTextEditingController.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Phone number can't be empty");
                              }
                              else {
                                  // User? user =FirebaseAuth.instance.currentUser ;
                                  // FirebaseFirestore.instance.collection('users').doc(user.uid).set({
                                  //     'Name':nameTextEditingController.text,
                                  //     'Email':emailTextEditingController.text,
                                  //     'Mobile':phoneTextEditingController.text,
                                  //     'Password':passwordTextEditingController.text
                                  // });
                                // final user = <String, dynamic>{
                                //   "Name":nameTextEditingController.text,
                                //   "Email": emailTextEditingController.text,
                                //   "Mobile":phoneTextEditingController.text,
                                //   "Password":passwordTextEditingController.text
                                // };
                                // FirebaseFirestore.instance.collection("users").add(user).then((DocumentReference doc) =>
                                //     print('DocumentSnapshot added with ID: ${doc.id}'));
                                // await FirebaseFirestore.instance.collection("users").get().then((event) {
                                //   for (var doc in event.docs) {
                                //     print("${doc.id} => ${doc.data()}");
                                //   }
                                // });
                                //addUser(nameTextEditingController.text, emailTextEditingController.text, phoneTextEditingController.text,passwordTextEditingController.text);
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                    email: emailTextEditingController.text,
                                    password: passwordTextEditingController
                                        .text).then((value){
                                  Fluttertoast.showToast(msg: "Created account successfully");
                                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>UserHomeScreen()), (route) => false);
                                }).onError((error, stackTrace){
                                  print("Error ${error.toString()}");
                                });
                              }
                            },
                            child: Text("Register",
                              style: TextStyle(
                                fontSize: 18,
                              ),),

                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have an account ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
                              },
                              child: Text("Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],

              )),
        ),
      ),
    );
  }
  Future addUser(String name,String email ,String mobile , String password ) async{
  await  FirebaseFirestore.instance.collection('users').add({
    'Name':name,
    'Email':email,
    'Mobile':mobile,
    'Password':password
  });
  }
}