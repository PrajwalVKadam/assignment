import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.8,
      width: deviceWidth * 0.8,
      padding: EdgeInsets.symmetric(
          horizontal: deviceHeight * 0.02, vertical: deviceWidth * 0.05),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 39, 39, 39),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Knoq Your Qualities",
              style: GoogleFonts.roboto(
                  color: Colors.grey[500],
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            Text(
              textAlign: TextAlign.center,
              "Know YourSelf Based On Your Personal traits",
              style: GoogleFonts.roboto(
                  color: Colors.grey[300],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: deviceHeight * 0.25,
            ),
            Text(
              "Emotional Intelligence",
              style: GoogleFonts.roboto(
                  color: Colors.grey[300],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Text(
                    "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since t",
                    style: GoogleFonts.roboto(
                        color: Colors.grey[500],
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    // clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.015,
                        horizontal: deviceWidth * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      // border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Unlock all 23 Personality Traits    ",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[300],
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SubWidget3 extends StatelessWidget {
  String text;
  SubWidget3(this.text);
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth * 0.8,
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.02,
        horizontal: deviceWidth * 0.04,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 57, 56, 56),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
          color: Colors.grey[500],
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
