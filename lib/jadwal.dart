import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:google_fonts/google_fonts.dart';

class Jadwal extends StatelessWidget {
  const Jadwal({super.key});

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
              //Color.fromRGBO(160, 174, 181, 0),
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
            Column(
              children: [
                Container(
                  child: Text(
                    "Jadwal Ruang",
                    style: GoogleFonts.comicNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Lab ICT 1",
                    style: GoogleFonts.comicNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                //defaultColumnWidth: FixedColumnWidth(10.0),
                columnWidths: {
                  0: FractionColumnWidth(0.1),
                  1: FractionColumnWidth(.16),
                  2: FractionColumnWidth(.23),
                  3: FractionColumnWidth(.24),
                  4: FractionColumnWidth(.23),
                },
                border: TableBorder.all(
                  color: Color.fromRGBO(89, 181, 210, 1),
                  style: BorderStyle.solid,
                  width: 2,
                  borderRadius: BorderRadius.circular(5),
                ),

                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(7, 144, 115, 1),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          ),
                          borderRadius: BorderRadiusDirectional.circular(15)),
                      children: [
                        Column(
                          children: [
                            Text(
                              'No',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Hari',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Waktu',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Mata Kuliah',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Prodi',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border:
                            Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      children: [
                        Column(
                          children: [
                            Text('1'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Senin'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('07.30-09.30'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('APSI'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Sistem Informasi'),
                          ],
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(60, 221, 240, 1),
                        border:
                            Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      children: [
                        Column(
                          children: [
                            Text('2'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Senin'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('09.30-11.30'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Proses Bisnis'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Sistem Informasi'),
                          ],
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border:
                            Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      children: [
                        Column(
                          children: [
                            Text('3'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Senin'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('13.30-15.30'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Pemrograman Visual'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Sistem Informasi'),
                          ],
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(60, 221, 240, 1),
                        border:
                            Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      children: [
                        Column(
                          children: [
                            Text('4'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Senin'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('15.30-17.30'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Pemrograman Web II'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Sistem Informasi'),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 247),
                  child: IconButton(
                      onPressed: () {
                       Navigator.pushNamed(context, '/Info');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 26,
                        color: Colors.white,

                      )),
                      
                ),
                TextButton(onPressed:() {
                  Navigator.pushNamed(context, '/Info');
                }, child:Text("Back", style: GoogleFonts.comicNeue(fontSize: 26, fontWeight: FontWeight.w400, color: Color.fromRGBO(255,255,255,1)),))
              ],
            ),
            
          ],
        ),
      ),
    ),
    );
  }
}
