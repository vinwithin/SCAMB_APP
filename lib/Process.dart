import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Process extends StatelessWidget {
  const Process({super.key});
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
              height: 454,
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 5),
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
                              "Proses",
                              style: GoogleFonts.comicNeue(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
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
                                  SizedBox(
                                      height: 18,),
                                  Text("WAKTU",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                       SizedBox(
                                      height: 18,),
                                  Text("MATA KULIAH",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                       SizedBox(
                                      height: 18,),
                                  Text("RUANG",
                                      style: GoogleFonts.comicNeue(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left),
                                  SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    width: 110,
                                    child: ElevatedButton(
                                      onPressed: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title:
                                              const Text('Apakah Anda Yakin ?'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Cancel'),
                                              child: const Text('Tidak'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pushNamed(
                                                      context, '/Info'),
                                              child: const Text('Iya'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(90, 187, 218, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      child: Text(
                                        "Batal",
                                        style: GoogleFonts.comicNeue(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(0, 58, 70, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
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
                               SizedBox(
                                      height: 18,),
                              Text("13.30 - 15.30",
                                  style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left),
                                   SizedBox(
                                      height: 18,),
                              Text(
                                "APSI",
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                               SizedBox(
                                      height: 18,),
                              Text(
                                "R-002",
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 150,
                              ),
                              Container(
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/Info');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(90, 187, 218, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )),
                                  child: Text(
                                    "Ubah",
                                    style: GoogleFonts.comicNeue(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Color.fromRGBO(0, 58, 70, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ])),
                      ]),
                ]),
              ),
            ),
            SizedBox(
              height: 55,
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
    ),
    );
  }
}

// void showPop() {
//   showDialog(
//       //context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(
//                 20.0,
//               ),
//             ),
//           ),
//           contentPadding: EdgeInsets.only(
//             top: 10.0,
//           ),
//           title: Text(
//             "Create ID",
//             style: TextStyle(fontSize: 24.0),
//           ),
//           content: Container(
//             height: 400,
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       "Mension Your ID ",
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Enter Id here',
//                           labelText: 'ID'),
//                     ),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 60,
//                     padding: const EdgeInsets.all(8.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.black,
//                         // fixedSize: Size(250, 50),
//                       ),
//                       child: Text(
//                         "Submit",
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('Note'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'
//                       ' ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud'
//                       ' exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
//                       ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
//                       'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,'
//                       ' sunt in culpa qui officia deserunt mollit anim id est laborum.',
//                       style: TextStyle(fontSize: 12),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
// }
