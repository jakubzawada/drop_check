import 'package:flutter/foundation.dart';

class NotificationSettings extends ChangeNotifier {
  bool _dropIsSwitched = true;
  bool _manSaleIsSwitched = true;
  bool _womanSaleIsSwitched = true;
  bool _otherIsSwitched = true;
  bool _darkModeIsSwitched = false;

  bool get dropIsSwitched => _dropIsSwitched;
  bool get manSaleIsSwitched => _manSaleIsSwitched;
  bool get womanSaleIsSwitched => _womanSaleIsSwitched;
  bool get otherIsSwitched => _otherIsSwitched;
  bool get darkModeIsSwitched => _darkModeIsSwitched;

  void toggleDrop(bool value) {
    _dropIsSwitched = value;
    notifyListeners();
  }

  void toggleManSale(bool value) {
    _manSaleIsSwitched = value;
    notifyListeners();
  }

  void toggleWomanSale(bool value) {
    _womanSaleIsSwitched = value;
    notifyListeners();
  }

  void toggleOther(bool value) {
    _otherIsSwitched = value;
    notifyListeners();
  }

  void toggleDarkMode(bool value) {
    _darkModeIsSwitched = value;
    notifyListeners();
  }
}
