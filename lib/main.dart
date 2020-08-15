import 'package:flutter/material.dart';
import 'rw_screen_until/rw_screen_fit.dart';  /// 1.0 导入头文件


void main()=>runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// 2.0 初始化 设置参考的屏幕宽度
    /// 全局只需要一次
    RWScreenFit.initalize(referencePhysicalWidth: 750);
    return MaterialApp(
      title: 'Review',
      home: Container(
        child: RWHomePage() ,
      ),
    );
  }
}

class RWHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Container(
          /// 3.0 设置尺寸
          /// 可以对比有设置屏幕适配的宽度：200.px 和 没有设置适配的高度尺寸height：200 两者的不同
          width: 200.px,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}

