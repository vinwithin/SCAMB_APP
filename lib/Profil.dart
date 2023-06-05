import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(239, 241, 242, 1),
                Color.fromRGBO(47, 176, 249, 0.39),
               // Color.fromRGBO(160, 174, 181, 0),
              ])),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
         
          //  padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
             physics: NeverScrollableScrollPhysics(),
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.only(top: 18),
                width: 118,
                height: 58,
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/LOGO SCAMB 1.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 100,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text("Masbroh", style: GoogleFonts.comicNeue(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromRGBO(0, 58, 70, 1)),),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text("F1E121000", style: GoogleFonts.comicNeue(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromRGBO(0, 58, 70, 1)),),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text("Masbroh@gmail.com", style: GoogleFonts.comicNeue(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromRGBO(0, 58, 70, 1)),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 128,),
              Container(
                width: 226,
              padding: EdgeInsets.symmetric(horizontal: 80),
              height: 63,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(90, 187, 218, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  "KELUAR",
                  style: GoogleFonts.comicNeue(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                  textAlign: TextAlign.center,
                ),
              ),
              ),
              SizedBox(height: 90,),
              Container(
              height: 100,
              alignment: Alignment.center,

              //color: Colors.amber,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Home');
                              },
                              icon: const Icon(
                                Icons.home,
                                size: 35,
                                color: Colors.black45,
                              )),
                        ),
                        Text("Home"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Order_info');
                              },
                              icon: const Icon(
                                Icons.notifications,
                                size: 35,
                                color: Colors.black45,
                              )),
                        ),
                        Text("Order Info"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Profil');
                              },
                              icon: const Icon(
                                Icons.account_box_rounded,
                                size: 35,
                                color: Colors.white,
                              )),
                        ),
                        Text("Account"),
                      ],
                    ),
                  ]),
            )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
