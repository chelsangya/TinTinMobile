import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {
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
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: <Widget>[
            //     Padding(padding: EdgeInsets.only(left: 25,top: 25),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: <Widget>[
            //           Text("Fill in all the details", style: GoogleFonts.poppins(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //               color:Colors.black),
            //           ),
            //
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            InkWell(
              child: Column(
                children: [
                  Padding(
                      padding:EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text("Already have an account? Login here",
                        style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:Colors.black),
                    ),
                ]
                    ),

                  )
                ],
              ),
              onTap: (){
                Navigator.of(context).pushReplacementNamed("/login");
              },
            ),
            Container(
              margin: EdgeInsets.only(top:5),
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
                        hintText: 'First Name',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                        suffixIcon: Icon(Icons.person_outlined)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5),
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
                        hintText: 'Last Name',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                        suffixIcon: Icon(Icons.person_outline_outlined)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5),
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
                        hintText: 'Phone',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                        suffixIcon: Icon(Icons.phone_outlined)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5),
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
              margin: EdgeInsets.only(top:5),
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
            Container(
              margin: EdgeInsets.only(top:5),
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
                        hintText: 'Confirm Password',
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
                width: 320,
                padding: EdgeInsets.only(top:10),
                child: ElevatedButton(onPressed: (){

                }, child:
                Text("Register"),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))))),
              ),
            ),


          ]
         )

        ],
      ),
    );
  }
}
