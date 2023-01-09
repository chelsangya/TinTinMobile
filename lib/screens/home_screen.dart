import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(

          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 25,top: 25),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text("Welcome to", style: GoogleFonts.poppins(
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                         color:Colors.black),
                   ),
                 Text("The efficient way to find books", style: GoogleFonts.poppins(
                           fontSize: 22,
                           fontWeight: FontWeight.w600,
                           color: Colors.black),
                 )


                 ]
           )
            ),
            Container(
              height: 36,
              margin: EdgeInsets.only(left: 25,right: 25,top: 50),
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
                      hintText: 'Search for the book...',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                        suffixIcon: Icon(Icons.search_outlined)),
                    ),
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),
                  unselectedLabelStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),
                  indicator: MaterialIndicator(

                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        margin:(EdgeInsets.only(right: 23)),
                        child:Text("New")
                      ),
                    ),
                    Tab(
                      child: Container(
                          margin:(EdgeInsets.only(right: 23)),
                          child:Text("Trending")
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
