import 'dart:ui';

class RWScreenFit {
  static double physicalWidth;  /// 物理分辨率-宽
  static double physicalHeight; /// 物理分辨率-高
  static double screenWidth;  /// 逻辑分辨率-宽
  static double screenHeight; /// 逻辑分辨率-高
  static double dpr;  /// 设备像素比
  static double statusBarHeight;  /// 状态栏高度

  static double px;   /// 像素

  /// 使用一个参考物理宽度初始化
  /// 比如设计稿参考的是iphone6手机的尺寸，那么就是750
  /// 默认的是iphone6手机屏幕
  static void initalize({double referencePhysicalWidth = 750}) {
    /// 物理参数
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
    /// 像素比
    dpr = window.devicePixelRatio;
    /// 逻辑分辨率
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;
    /// 状态栏高度
    statusBarHeight = window.padding.top / dpr;
    /// px
    px = physicalWidth / referencePhysicalWidth;
  }

  static double setPx(double size) {
    return size * px;
  }
}



