import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order_info extends StatelessWidget {
  const Order_info({super.key});
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
      body: Container(
        
        child: ListView(
           physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    margin: EdgeInsets.only(top: 18),
                    width: 136,
                    height: 78,
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      "assets/LOGO SCAMB 1.png",
                      width: 608,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(top: 32),
                      height: 58,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "hi, masbroh",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AutofillHints.addressCity),
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Lab ICT 1",
                style: GoogleFonts.comicNeue(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 230,
              width: 37,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Card(
                color: Color.fromRGBO(160, 221, 240, 1),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(
                    color: Color.fromRGBO(89, 181, 210, 1),
                    width: 1,
                  )
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                      child: Text(
                        "Lab ICT 1",
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.w400, fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      width: 110,
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Process');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Text(
                          "Selesai",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "HARI",
                                    style: GoogleFonts.comicNeue(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text("WAKTU",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                  Text("MATA KULIAH",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                  Text("RUANG",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                ])),
                        Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(children: [
                              Text(
                                "SELASA",
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text("13.30 - 15.30",
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left),
                              Text(
                                "APSI",
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "R-002",
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ])),
                      ]),
                ]),
              ),
            ),
            SizedBox(
              height: 41,
            ),
            Container(
              //alignment: Alignment.topLeft,
              height: 142,
              width: 30,
              padding: EdgeInsets.symmetric(horizontal: 39),
              child: Card(
                color: Color.fromRGBO(89, 181, 210, 1),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(
                    color: Color.fromRGBO(89, 181, 210, 1),
                    width: 1,
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 12 ),
                      child: Text(
                        "status Pemesanan:",
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 185,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Process');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                            )),
                        child: Text(
                          "Disetujui",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              fontStyle: FontStyle.italic,
                              color: Color.fromRGBO(16, 246, 11, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Gunakan ruang kelas dengan bijak",
                      style: GoogleFonts.comicNeue(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ingin membatalkan pesanan?",
              style: GoogleFonts.comicNeue(
                  fontWeight: FontWeight.w700, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Container(
              width: 60,
              padding: EdgeInsets.symmetric(horizontal: 120),
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Profil');
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(90, 187, 218, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  "Batalkan",
                  style: GoogleFonts.comicNeue(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color.fromRGBO(0, 58, 70, 1)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
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
                                color: Colors.white,
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
                                color: Colors.black45,
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
    );
  }
}
