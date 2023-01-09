import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
          children: [
            Column(
                children: [
                  Image.asset(
                    "assets/images/hand_book.jpg",

                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 25,top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Welcome to TinTin", style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:Colors.black),
                            ),
                            Text("The efficient way to find books", style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).pushReplacementNamed("/register");
                      },
                          child:
                      Text("Create Account")),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color(0xFFf5f5f5)

                    ),
                    child: Stack(
                      children:<Widget> [
                        TextField(
                          maxLengthEnforcement:MaxLengthEnforcement.enforced,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(left: 19,right: 50),
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                              suffixIcon: Icon(Icons.email_outlined)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color(0xFFf5f5f5)

                    ),
                    child: Stack(
                      children:<Widget> [
                        TextField(
                          maxLengthEnforcement:MaxLengthEnforcement.enforced,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(left: 19,right: 50),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                              suffixIcon: Icon(Icons.password_outlined)),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(onPressed: (){}, child:
                      Text("Login")),
                    ),
                  ),

                ]
            ),
          ]

      ),
    );

  }
}
