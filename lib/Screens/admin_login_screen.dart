import 'package:dropium/Screens/admin_home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
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
                      width: 250,
                    ),
                  ),
                  Text("Hello Admin !",
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
                            onPressed: () {
                              if(emailTextEditingController.text == "admin123@gmail.com" && passwordTextEditingController.text == "123456") {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) =>
                                        AdminHomeScreen()), (route) => false);

                              }
                              else{
                                Fluttertoast.showToast(msg:"Invalid Email / Password");
                              }
                                  },
                            child: Text("Login",
                              style: TextStyle(
                                fontSize: 18,
                              ),),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Are you an user?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:14,
                              ),
                            ),
                            TextButton(
                              onPressed:(){
                                Navigator.pushNamed(context, '/login');
                              } ,
                              child:Text("Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                ),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed:(){
                                Fluttertoast.showToast(msg:"Hint: admin123@gmail.com,123456");
                              } ,
                              child:Text("Forgot password?",
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
