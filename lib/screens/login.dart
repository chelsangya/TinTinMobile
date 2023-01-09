import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tintin/screens/Google_signin.dart';

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


                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",

                        onPressed: (){}),
                  ),
                  Container(
                    padding:EdgeInsets.only(top: 10,bottom: 20) ,
                    child: SignInButton(
                      Buttons.Facebook,
                      text: "Sign in with Facebook",
                      onPressed: (){},
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Divider(
                          indent: 20.0,
                          endIndent: 10.0,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        "Sign in with Email",
                        style:TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10.0,
                          endIndent: 20.0,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                            prefixIcon: Icon(Icons.email_outlined)),
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
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                              prefixIcon: Icon(Icons.password_outlined)),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(top: 20,bottom: 10,right: 35),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Forgot password?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent),
                                ),
                              ]
                          ),

                        ),



                  Center(
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.only(bottom: 10,top: 0),

                      child: ElevatedButton(onPressed: (){}, child:
                      Text("Login"),

                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))))
                        ),
                      ),
                    ),

                  Container(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text:"Do not have an account?"),
                          TextSpan(text: " Register here",
                              style: TextStyle(
                              color: Colors.blueAccent,fontWeight: FontWeight.w600))
                        ]
                      ),
                    ),
                  )


                ]
            ),
          ]

      ),
    );

  }

  // final FirebaseAuth auth = FirebaseAuth.instance;
  //
  // Future<void> signup(BuildContext context) async {
  //   final GoogleSignIn googleSignIn = GoogleSignIn();
  //   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  //   if (googleSignInAccount != null) {
  //     final GoogleSignInAuthentication googleSignInAuthentication =
  //     await googleSignInAccount.authentication;
  //     final AuthCredential authCredential = GoogleAuthProvider.credential(
  //         idToken: googleSignInAuthentication.idToken,
  //         accessToken: googleSignInAuthentication.accessToken);
  //
  //     // Getting users credential
  //     UserCredential result = await auth.signInWithCredential(authCredential);
  //     User user = result.user;
  //
  //     if (result != null) {
  //       Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => HomePage()));
  //     } // if result not null we simply call the MaterialpageRoute,
  //     // for go to the HomePage screen
  //   }
  // }


}
