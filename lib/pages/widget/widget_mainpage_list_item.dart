import 'package:flutter/material.dart';

class WidgetMainPageListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgUrl;
  final onTap;

  WidgetMainPageListItem(this.title, this.subtitle, this.imgUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        //纵向 相对 间距
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              //宽度为最大
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 70,
                right: 20,
              ),
              //内间距
              padding: EdgeInsets.only(
                left: 50,
                right: 20,
              ),
              //约定 高度为 100
              constraints: BoxConstraints(minHeight: 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          color: Color(0xffb6b2df),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          color: Color(0xffb6b2df),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff333366),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Padding(
              // 左间距 30 + 半径40 刚好中心在 卡片 左侧轴上
              padding: const EdgeInsets.only(left: 30),
              //椭圆 可以当做原型来使用  ClipOval
              child: ClipOval(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(
                    imgUrl,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
