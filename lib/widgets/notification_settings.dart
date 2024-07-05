import 'package:flutter/foundation.dart';

class NotificationSettings extends ChangeNotifier {
  bool _dropIsSwitched = true;
  bool _manSaleIsSwitched = true; // Zmieniono na osobne zmienne
  bool _womanSaleIsSwitched = true; // Zmieniono na osobne zmienne
  bool _otherIsSwitched = true;
  bool _darkModeIsSwitched = false;

  bool get dropIsSwitched => _dropIsSwitched;
  bool get manSaleIsSwitched => _manSaleIsSwitched; // Zmieniono getter
  bool get womanSaleIsSwitched => _womanSaleIsSwitched; // Zmieniono getter
  bool get otherIsSwitched => _otherIsSwitched;
  bool get darkModeIsSwitched => _darkModeIsSwitched;

  void toggleDrop(bool value) {
    _dropIsSwitched = value;
    notifyListeners();
  }

  void toggleManSale(bool value) {
    // Dodano metodę toggle
    _manSaleIsSwitched = value;
    notifyListeners();
  }

  void toggleWomanSale(bool value) {
    // Dodano metodę toggle
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
