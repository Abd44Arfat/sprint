// Eq: pixels = (number/100) of screen size (height or width)
// number = (pixels * 100) / screen size (height or width)
class AppSizeH {
  AppSizeH._();
  static const double s100 = 100;
  static const double s10 = 10;
  static const double s1 = 1;
}

class AppSizeW {
  AppSizeW._();
  static const double s100 = 100;
  static const double s10 = 10;
  static const double s1 = 1;
}

extension ResponsiveSize on int {
  double getSizeH() {
    if (this < 10) return toDouble();
    if (this >= 10 && this < 100) {
      int firstNumber = this % 10;
      int lastNumber = this ~/ 10;
      return AppSizeH.s10 * lastNumber + AppSizeH.s1 * firstNumber;
    } else if (this > 10 && this >= 100 && this < 1000) {
      int firstNumber = this % 100;
      int secondNumber = (this ~/ 10) % 10;
      int thirdNumber = this ~/ 100;
      return AppSizeH.s100 * thirdNumber +
          AppSizeH.s10 * secondNumber +
          AppSizeH.s1 * firstNumber;
    } else {
      return 0.0;
    }
  }

  double getSizeW() {
    if (this < 10) return toDouble();
    if (this >= 10 && this < 100) {
      int firstNumber = this % 10;
      int lastNumber = this ~/ 10;
      return AppSizeW.s10 * lastNumber + AppSizeW.s1 * firstNumber;
    } else if (this > 10 && this >= 100 && this < 1000) {
      int firstNumber = this % 100;
      int secondNumber = (this ~/ 10) % 10;
      int thirdNumber = this ~/ 100;
      return AppSizeW.s100 * thirdNumber +
          AppSizeW.s10 * secondNumber +
          AppSizeW.s1 * firstNumber;
    } else {
      return 0.0;
    }
  }
}
