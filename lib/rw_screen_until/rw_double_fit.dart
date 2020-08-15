import 'rw_screen.dart';

/// extension语法 最早是出现在dart 2.6.0版本
/// double类扩展，添加getter方法：屏幕适配
extension RWDoubleFit on double {
  double get px {
    return RWScreenFit.setPx(this);
  }
}