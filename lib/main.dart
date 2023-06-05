import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scamb/Profil.dart';
import 'package:scamb/Sign.dart';
import 'package:scamb/home.dart';
import 'package:scamb/jadwal.dart';
import 'package:scamb/login.dart';
import 'package:scamb/contains.dart';
import 'package:scamb/info.dart';
import 'package:scamb/Process.dart';
import 'package:scamb/order_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Awal(),
        '/login': (context) => const Login(),
        '/Signup': (context) => const SignUp(),
        '/Home': (context) => const Home(),
        '/Info': (context) =>  Info(),
        '/Process': (context) => const Process(),
        '/Order_info': (context) => const Order_info(),
        '/Profil': (context) => const Profil(),
        '/Jadwal': (context) => const Jadwal(),
      },
    );
  }
}

class Awal extends StatelessWidget {
  const Awal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(239, 241, 242, 1),
                  Color.fromRGBO(47, 176, 249, 0.39),
                  // Color.fromRGBO(160, 174, 181, 0),
                ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
           
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome to SCAMB APP",
                  style: textTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3.0,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ]),
                ),
                SizedBox(height: 73),
                Image.asset(
                  "assets/Scamb_logo.png",
                  width: 318.0,
                  height: 134.0,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 105),
                Text(
                    '"Keep your classroom ready to learn with our Mobile-based classroom-Checkin app"',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 12),
                    textAlign: TextAlign.center),
                SizedBox(height: 75),
                Container(
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
                        )),
                    child: Text(
                      "MASUK",
                      style: GoogleFonts.comicNeue(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 19),
                Container(
                  width: 226,
                  height: 63,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signup');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(217, 217, 217, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text("DAFTAR",
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                        textAlign: TextAlign.center),
                  ),
                )
              ],
            )),
      ),
      ),
    );
  }
}
