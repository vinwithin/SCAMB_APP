import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget{
   const SignUp ({Key? key}) : super (key : key);
  @override
  Widget build(BuildContext context){
    return Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(239, 241, 242, 1),
                Color.fromRGBO(47, 176, 249, 0.39),
                //Color.fromRGBO(160, 174, 181, 0),
              ]
            )
            ),
    child:Scaffold(
      backgroundColor: Colors.transparent,
     body: Center(
        child: Container(
          
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
            SizedBox(height: 45),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 65),
              child: Text("Alamat Email", style: GoogleFonts.comicNeue(fontSize: 20, fontWeight: FontWeight.w400),),
              ),
            ]
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row( 
                children: [
               Icon(
                Icons.account_circle_sharp,
                color: Colors.black,
                size: 40,
              ),
                   SizedBox(width: 6) ,
            new SizedBox(
              width: 261,
              height: 40,
             child: TextField(
              decoration: InputDecoration( 
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                 contentPadding:
                      EdgeInsets.only(left: 8, bottom: 5, top: 0.0, right: 0),
                ),
             ),
            )
              
            ],
             )
             )
             
              
            ],
           
           ),
            SizedBox(height: 25),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 65),
              child: Text("NIM", style: GoogleFonts.comicNeue(fontSize: 20, fontWeight: FontWeight.w400),),
              ),
            ]
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row( 
                children: [
               Icon(
                Icons.email_outlined,
                color: Colors.black,
                size: 40,
              ),
                   SizedBox(width: 6) ,
            new SizedBox(
              width: 261,
              height: 40,
             child: TextField(
              decoration: InputDecoration( 
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                 contentPadding:
                      EdgeInsets.only(left: 8, bottom: 5, top: 0.0, right: 0),
                ),
             ),
            )
              
            ],
             )
             )
             
              
            ],
           
           ),
           SizedBox(height: 25),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 65),
              child: Text("Kata Sandi", style: GoogleFonts.comicNeue(fontSize: 20, fontWeight: FontWeight.w400),),
              ),
            ]
           ),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Row( 
                children: [
               Icon(
                Icons.lock,
                color: Colors.black,
                size: 40,
              ),
                   SizedBox(width: 6) ,
            new SizedBox(
              width: 261,
              height: 40,
             child: TextField(
              decoration: InputDecoration( 
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                 contentPadding:
                      EdgeInsets.only(left: 8, bottom: 5, top: 0.0, right: 0),
                ),
             ),
            )
              
            ],
             )
             )
             
              
            ],
           
           ),
           SizedBox(height: 120),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 82),
                  width: 226,
                  height: 63,
                  
                  child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(90, 187, 218, 1), 
                          
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                        ),
                        child: Text("DAFTAR", style: GoogleFonts.comicNeue(fontWeight: FontWeight.w400, fontSize: 24, color: Color.fromRGBO(0, 0, 0, 1)),textAlign: TextAlign.center,),
                      ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("Punya Akun?", style:GoogleFonts.comicNeue(fontWeight: FontWeight.w400, fontSize:20), textAlign: TextAlign.center,),
                          TextButton(
                            onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },child:Text("Masuk", style:GoogleFonts.comicNeue(fontWeight: FontWeight.w400, fontSize:20, color: Color.fromRGBO(255, 255, 255, 1)),textAlign: TextAlign.center, ),),
                        ],)
                    )
                  ],
                ),
                SizedBox(height: 30),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                               Navigator.pushNamed(context, '/');
                          }, 
                          icon: const Icon(Icons.arrow_back_ios_new,),
                          iconSize: 20,
                          color: Colors.white,
                          
                          ),
                          
                          TextButton(
                            onPressed: () {
                             Navigator.pushNamed(context, '/');
                          },child:Text("Back", style:GoogleFonts.comicNeue(fontWeight: FontWeight.w400, fontSize:20, color: Color.fromRGBO(255,255,255,1)),textAlign: TextAlign.center, ),),
                          // Text("Back", style: GoogleFonts.comicNeue(fontWeight:FontWeight.w400, fontSize: 28, color: Color.fromRGBO(3, 3, 3, 1)),),
                        ],)
                    )
                  ],
                ),
           
          ] 
          
        ),
      )
     )
    ),
    );

  }
}