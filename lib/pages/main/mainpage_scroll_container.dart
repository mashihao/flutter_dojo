import 'package:flutter/material.dart';
import 'package:flutter_dojo/category/pattern/popup/toast.dart';
import 'package:flutter_dojo/pages/animation/animation_mainpage.dart';
import 'package:flutter_dojo/pages/backend/backend_manpage.dart';
import 'package:flutter_dojo/pages/main/mainpage_page_header.dart';
import 'package:flutter_dojo/pages/pattern/pattern_mainpage.dart';
import 'package:flutter_dojo/pages/widget/widget_mainpage.dart';

import 'mainpage_page_layout.dart';

class MainPageScrollContainer extends StatefulWidget {
  @override
  _MainPageScrollContainerState createState() =>
      _MainPageScrollContainerState();
}

class _MainPageScrollContainerState extends State<MainPageScrollContainer> {
  PageController pageController;
  //类似于 LiveData 数据监听使用
  ValueNotifier<double> notifier = ValueNotifier<double>(0);

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            //顶部 渐变颜色背景
            ValueListenableBuilder(
              valueListenable: notifier,
              builder: (context, value, widget) {
                //颜色渐变
                return Container(
                  color: Color.lerp(
                    Color(0xFF673AB7),
                    Color(0xFFF44336),
                    notifier.value,
                  ),
                );
              },
            ),
            //头部文案
            MainPagePageHeader(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              // 占 屏幕 70%  MediaQuery 获取 屏幕相应参数
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: PageView(
                      controller: pageController
                        ..addListener(() {
                          // 最终是 0-1 的数值 刚好用于底部颜色渐变
                          notifier.value = pageController.offset /
                              pageController.position.maxScrollExtent;
                          print(
                              "${pageController.offset}---${pageController.position.maxScrollExtent}");
                        }),
                      children: <Widget>[
                        PageWidget(
                          'Widgets',
                          'Show Flutter Widgets in category',
                          'assets/images/widget_bg.png',
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WidgetMainPage()));
                          },
                        ),
                        PageWidget(
                          'UI Pattern',
                          'Show UI Pattern in most Apps',
                          'assets/images/pattern_bg.png',
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatternMainPage()));
                          },
                        ),
                        PageWidget(
                          'Animations',
                          'Show Flutter Animations',
                          'assets/images/animation_bg.jpg',
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnimationMainPage()));
                          },
                        ),
                        PageWidget(
                          'Back-end Util',
                          'Show Flutter back-end util',
                          'assets/images/backend.jpg',
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BackendMainPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12, left: 48, right: 48),
                    child: ValueListenableBuilder(
                      valueListenable: notifier,
                      builder: (context, value, widget) {
                        return LinearProgressIndicator(
                          value: notifier.value,
                          backgroundColor: Colors.blue,
                          valueColor: AlwaysStoppedAnimation(
                            Color.lerp(
                              Color(0xFF673AB7),
                              Color(0xFFF44336),
                              notifier.value,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            padding: const EdgeInsets.all(24),
            color: Colors.white10,
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 40,
                    child: Text('马世豪'),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ListTile(
                  onTap: () => {Toast.show(context, "click")},
                  title: Text('Username'),
                  subtitle: Text('Email'),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    //icon 添加颜色
                    color: Colors.red,
                    size: 50,
                  ),
                ),
                SizedBox(height: 16),
                ListTile(
                  title: Text('代码主题设置'),
                  subtitle: Wrap(
                    children: <Widget>[
                      ChoiceChip(
                        backgroundColor: Colors.grey,
                        selectedColor: Colors.blueAccent,
                        label: Text('Light'),
                        labelStyle: TextStyle(fontSize: 15),
                        onSelected: (value) {
                          Toast.show(context, "Light");
                        },
                        selected: true,
                      ),
                      //添加 间距
                      SizedBox(width: 16),
                      ChoiceChip(
                        backgroundColor: Colors.grey,
                        selectedColor: Colors.blueAccent,
                        label: Text('Dark'),
                        labelStyle: TextStyle(fontSize: 15),
                        onSelected: (value) {
                          Toast.show(context, "Dark");
                        },
                        selected: true,
                      ),
                      //添加 间距
                      SizedBox(width: 16),
                      ChoiceChip(
                        backgroundColor: Colors.grey,
                        selectedColor: Colors.blueAccent,
                        label: Text('Github'),
                        labelStyle: TextStyle(fontSize: 15),
                        onSelected: (value) {
                          Toast.show(context, "Github");
                        },
                        selected: false,
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
