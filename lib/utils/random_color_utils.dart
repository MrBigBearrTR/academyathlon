import 'dart:math';
import 'dart:ui';

class RandomColorUtils {
  static final List<int> _colorList = [
    0xFFDB4437,
    0xFFFABC05,
    0xFF34A853,
  ];

  static Color getColor() {
    return Color(_colorList[Random().nextInt(_colorList.length-1)]);
  }

  static Color getStaticColor(int i) {
    int count=0;
    if(i>3){
      count=1;
    }else{
      count=i;
    }
    return Color(_colorList[count-1]);
  }
}
