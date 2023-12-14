import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:melooha_assignment/views/widgets/widget1.dart';
import 'package:melooha_assignment/views/widgets/widget2.dart';
import 'package:melooha_assignment/views/widgets/widget3.dart';
import 'package:melooha_assignment/views/widgets/widget4.dart';

class HomePageController extends GetxController {
  final PageController pgController = PageController();

  RxList<Widget> widgets_list =
      <Widget>[Widget1(), Widget2(), Widget3(), Widget4()].obs;

  RxInt current_index = 0.obs;
}
