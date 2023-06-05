//import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:async';
//import 'package:scamb/contains.dart';
//import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromRGBO(239, 241, 242, 1),
              Color.fromRGBO(47, 176, 249, 0.39),
             // Color.fromRGBO(160, 174, 181, 0),
            ])),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
       

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
            // Container(
            //     child: FutureBuilder<List>(
            //     future: getData(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasError) print(snapshot.error);
            //       return snapshot.hasData
            //           ? new itemList(list: snapshot.requireData)
            //           : new Center(
            //               child: new CircularProgressIndicator(),
            //             );
            //     },
            //   ),
            // ),
            Container(
              width: 359,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(77, 125, 181, 0.33),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(28, 27, 31, 1))),
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search",
                  contentPadding:
                      EdgeInsets.only(left: 8, bottom: 5, top: 0.0, right: 0),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        height: 15,
                        child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/Info'),
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(160, 221, 240, 1),
                            shadowColor: Color.fromRGBO(0, 0, 0, 0.25),
                            fixedSize: Size.fromHeight(40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: Color.fromRGBO(77, 125, 181, 1),
                                  width: 1,
                                )),
                          ),
                          child: Text(
                            "Lab ICT 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              height: 150,
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
