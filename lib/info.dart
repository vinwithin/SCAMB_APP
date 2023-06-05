import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:dropdown_search/dropdown_search.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  _Info createState() => _Info();
}

class _Info extends State<Info> {
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
      child: Scaffold(
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
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lab ICT 1",
                        style: GoogleFonts.comicNeue(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        ),
                      ),
                      Container(
                          child: DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down_circle),
                        iconSize: 28,
                        items: <String>[
                          'Lab ICT 1',
                          'Lab ICT 1',
                          'Lab ICT 1',
                          'Lab ICT 1'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      )),
                    ],
                  )),
              Container(
                alignment: Alignment.topLeft,
                height: 500,
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
                      )),
                  child: Column(children: [
                    Row(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                        child: Text(
                          "Lab ICT 1",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.w400, fontSize: 24),
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
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        "HARI",
                                        style: GoogleFonts.comicNeue(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text("WAKTU",
                                        style: GoogleFonts.comicNeue(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text("MATA KULIAH",
                                        style: GoogleFonts.comicNeue(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left),
                                    SizedBox(
                                      height: 18,
                                    ),
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
                               Text("SELASA",
                                    style: GoogleFonts.comicNeue(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left),
                                SizedBox(
                                  height: 18,
                                ),
                                Text("13.30 - 15.30",
                                    style: GoogleFonts.comicNeue(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "APSI",
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
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
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: 205,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Jadwal');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Text(
                          "Cek Jadwal",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 98,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      width: 205,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text(
                              'Berhasil Dipesan',
                              textAlign: TextAlign.center,
                            ),
                            content: const Icon(
                              Icons.check_circle_sharp,
                              size: 50,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/Process'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(90, 187, 218, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Text(
                          "Pesan Kelas",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color.fromRGBO(20, 58, 70, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
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
                                  color: Colors.white,
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
        // bottomNavigationBar: BottomNavigationBar(
        //   iconSize: 35,
        //   fixedColor: Colors.black,
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home_filled),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.notifications),
        //       label: "Order Info",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_circle_outlined),
        //       label: "Account",
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
