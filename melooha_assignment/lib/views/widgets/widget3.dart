import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Widget3 extends StatelessWidget {
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ask your Question",
            style: GoogleFonts.roboto(
                color: Colors.grey[500],
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Text(
            "Pose Your Question to AI",
            style: GoogleFonts.roboto(
                color: Colors.grey[300],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.04,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 138, 43, 65),
                child: Icon(Icons.download),
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),
              Text(
                "Vani",
                style: GoogleFonts.roboto(
                    color: Colors.grey[400],
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            "Here Are Some Suggestions for you",
            style: GoogleFonts.roboto(
                color: Colors.grey[400],
                fontSize: 17,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          SubWidget3(
              "How will be my dad's health for teh comming three months ??"),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          SubWidget3("Will I get married this year?"),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          SubWidget3("Will I win the upcomming football match??"),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          SubWidget3(
              "How will be my dad's health for teh comming three months ??"),
          SizedBox(
            height: deviceHeight * 0.07,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: deviceHeight * 0.015, horizontal: deviceWidth * 0.03),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Ask Your Own Question to Vaani     ",
              style: GoogleFonts.roboto(
                  color: Colors.grey[300],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
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
