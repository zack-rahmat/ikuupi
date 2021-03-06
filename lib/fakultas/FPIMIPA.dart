import 'package:flutter/material.dart';
import 'package:iku_application/departemen/Biologi.dart';
import 'package:iku_application/departemen/Fisika.dart';
import 'package:iku_application/departemen/IPSE.dart';
import 'package:iku_application/departemen/Kemakom.dart';
import 'package:iku_application/departemen/Kimia.dart';
import 'package:iku_application/departemen/Matematika.dart';
import 'package:iku_application/fakultas/FPIMIPA.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const FPMIPA());
}

class FPMIPA extends StatelessWidget {
  const FPMIPA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            backgroundColor: HexColor("#E45826"),
            title: const Text('FPMIPA'),
          ),
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage("images/isola.jpg"),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                )),
              ),
              Center(
                child: GridView(
                    padding: const EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("images/ILMUKOMPUTER.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Kemakom();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/BIOLOGI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Biologi();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/KIMIA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Kimia();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/FISIKA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Fisika();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/MATEMATIKA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Matematika();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/IPSE.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return IPSE();
                          }));
                        },
                      ),
                    ]),
              )
            ],
          )),
    );
  }
}
