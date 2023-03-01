import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../services/local_notification_service.dart';
import '../viewmodels/auth_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthViewModel _authViewModel;

  void checkLogin() async{
    await Future.delayed(Duration(seconds: 5));
    // check for user detail first
    try{
      await _authViewModel.checkLogin();
      if(_authViewModel.user==null){
        Navigator.of(context).pushReplacementNamed("/login");
      }else{
        NotificationService.display(
          title: "Welcome back",
          body: "Hello ${_authViewModel.loggedInUser?.name},\n We have been waiting for you.",
        );
        Navigator.of(context).pushReplacementNamed("/dashboard");
      }
    }catch(e){
      Navigator.of(context).pushReplacementNamed("/login");
    }

  }
  @override
  void initState() {
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    checkLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFB2935B),
                gradient: LinearGradient(colors: [(new  Color(0xFFB2935B)), new Color(0xFFB2935B)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/abc.png")
          ),
          ),
        ],
      ),
    );
  }}
