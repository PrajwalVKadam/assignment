import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:melooha_assignment/Controller/page_controller.dart';
import 'package:melooha_assignment/views/widgets/widget1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/widget2.dart';
import 'widgets/widget3.dart';
import 'widgets/widget4.dart';

class HomePage extends StatelessWidget {
  // final HomePageController home_page_controller = Get.find();
  final home_page_controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.04,
                  vertical: deviceHeight * 0.03),
              height: deviceHeight * 0.9,
              width: deviceWidth * 0.98,
              child: PageView.builder(
                dragStartBehavior: DragStartBehavior.start,
                // pageSnapping: false,

                padEnds: false,
                controller: PageController(
                  viewportFraction: 0.9,
                ),
                itemCount: home_page_controller.widgets_list.length,
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.antiAlias,
                // onPageChanged: (value) {
                //   home_page_controller.current_index.value = value;
                // },
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: deviceHeight * 0.01),
                    child: home_page_controller.widgets_list[index],
                  );
                },
              ),
            ),
            Container(
              // width: 10,
              child: SmoothPageIndicator(
                effect: SlideEffect(radius: 4, dotWidth: 7, dotHeight: 8),
                axisDirection: Axis.vertical,
                onDotClicked: (value) {},
                controller: home_page_controller.pgController,
                count: home_page_controller.widgets_list.length,
              ),
            )
          ],
        ));
  }
}
