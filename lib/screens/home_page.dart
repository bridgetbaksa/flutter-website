import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                      height: screenSize.height * 0.75,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/images/background.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width / 2,
                    top: screenSize.height * 0.5,
                    right: screenSize.width * 0.01,
                    bottom: screenSize.height * 0.01,
                    child: AutoSizeText(
                      'BRIDGET BAKSA',
                      maxLines: 1,
                      style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                          fontSize: 65,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width / 2,
                    top: screenSize.height * 0.60,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          10,
                          10,
                          screenSize.width * 0.25,
                          10,
                        ),
                        child: AutoSizeText(
                          'Software Engineer',
                          maxLines: 1,
                          style: GoogleFonts.aleo(
                            textStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
