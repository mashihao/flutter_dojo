import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';

class OutlineButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MainTitleWidget('OutlineButton基本使用'),
        MainTitleWidget('OutlineButton with icon'),
        MainTitleWidget('OutlineButton with custom border'),
      ],
    );
  }
}
