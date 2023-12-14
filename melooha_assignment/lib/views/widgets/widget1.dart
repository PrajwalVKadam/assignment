import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Widget1 extends StatelessWidget {
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
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Dec 12 2023",
            style: GoogleFonts.roboto(
                color: Colors.grey[500],
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Text(
            "Today's Insights",
            style: GoogleFonts.roboto(
                color: Colors.grey[300],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.04,
          ),
          Text(
            "Embrace Change Trust Institution and go for it today",
            style: GoogleFonts.roboto(
                color: Colors.grey[300],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          Text(
            "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: GoogleFonts.roboto(
                color: Colors.grey[500],
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: deviceHeight * 0.06,
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
