import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.85,
      width: deviceWidth * 0.8,
      padding: EdgeInsets.symmetric(
          horizontal: deviceHeight * 0.02, vertical: deviceWidth * 0.05),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 39, 39, 39),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Good and Challenging Moments",
            style: GoogleFonts.roboto(
                color: Colors.grey[500],
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            "Your Cosmic Daily Forecast",
            style: GoogleFonts.roboto(
                color: Colors.grey[300],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          SubWidget(),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          SubWidget(),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: deviceHeight * 0.14,
                width: deviceWidth * 0.4,
                padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.02,
                    horizontal: deviceWidth * 0.03),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 57, 56, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(
                          width: deviceWidth * 0.02,
                        ),
                        Text(
                          "Red",
                          style: GoogleFonts.roboto(
                              color: Colors.grey[300],
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Text(
                      "Lucky Color",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[500],
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Container(
                height: deviceHeight * 0.14,
                width: deviceWidth * 0.4,
                padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.02,
                    horizontal: deviceWidth * 0.03),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 57, 56, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "12",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[300],
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Lucky Color",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[500],
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.grey[500],
                    ),
                    SizedBox(
                      width: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.thumb_down_alt_outlined,
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.grey[500],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: deviceHeight * 0.02, horizontal: deviceWidth * 0.03),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 57, 56, 56),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "Chogdiya",
            style: GoogleFonts.roboto(
                color: Colors.grey[300],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            "Embrace positivity,seize opportunity beetween",
            style: GoogleFonts.roboto(
                color: Colors.grey[500],
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "11.34PM",
                style: GoogleFonts.roboto(
                    color: Colors.grey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "to",
                style: GoogleFonts.roboto(
                    color: Colors.grey[500],
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "11.34PM",
                style: GoogleFonts.roboto(
                    color: Colors.grey[300],
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: deviceWidth * 0.03),
                child: Text(
                  "start",
                  style: GoogleFonts.roboto(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: deviceWidth * 0.03),
                child: Text(
                  "ends",
                  style: GoogleFonts.roboto(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
