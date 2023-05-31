import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget{
   const Home ({Key? key}) : super (key : key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Center(
        child: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(239, 241, 242, 1),
                Color.fromRGBO(47, 176, 249, 0.39),
                Color.fromRGBO(160, 174, 181, 0),
              ]
            )
            ),
            //  padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:EdgeInsets.symmetric(horizontal: 0),
              margin: EdgeInsets.only(top: 18),
              width: 118,
              height: 58,
              alignment: Alignment.centerLeft,
              child: Image.asset(
                  "assets/LOGO SCAMB 1.png",
                  fit: BoxFit.contain,
                ),
            ),
            Container(
              width: 359,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
             child: TextField(
              autofocus: true,
              
              decoration: InputDecoration( 
                 filled: true,
                 fillColor: Color.fromRGBO(77, 125, 181, 0.33),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                 enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(28, 27, 31, 1))) ,
                 suffixIcon: Icon(Icons.search_outlined),
                 hintText: "Search",
                 contentPadding: EdgeInsets.only(left: 8, bottom: 5, top: 0.0, right: 0),
                 
                ),
             ),
            )
          ],
        ),
        )
     )
    );
  }
}
