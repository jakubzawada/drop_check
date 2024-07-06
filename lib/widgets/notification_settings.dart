import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationSettings extends ChangeNotifier {
  bool _dropIsSwitched = true;
  bool _manSaleIsSwitched = true;
  bool _womanSaleIsSwitched = true;
  bool _otherIsSwitched = true;
  bool _darkModeIsSwitched = false;

  NotificationSettings() {
    _loadPreferences();
  }

  bool get dropIsSwitched => _dropIsSwitched;
  bool get manSaleIsSwitched => _manSaleIsSwitched;
  bool get womanSaleIsSwitched => _womanSaleIsSwitched;
  bool get otherIsSwitched => _otherIsSwitched;
  bool get darkModeIsSwitched => _darkModeIsSwitched;

  void toggleDrop(bool value) {
    _dropIsSwitched = value;
    _savePreferences();
    _updateFCMSubscription('drop', value);
    notifyListeners();
  }

  void toggleManSale(bool value) {
    _manSaleIsSwitched = value;
    _savePreferences();
    _updateFCMSubscription('manSale', value);
    notifyListeners();
  }

  void toggleWomanSale(bool value) {
    _womanSaleIsSwitched = value;
    _savePreferences();
    _updateFCMSubscription('womanSale', value);
    notifyListeners();
  }

  void toggleOther(bool value) {
    _otherIsSwitched = value;
    _savePreferences();
    _updateFCMSubscription('other', value);
    notifyListeners();
  }

  void toggleDarkMode(bool value) {
    _darkModeIsSwitched = value;
    _savePreferences();
    notifyListeners();
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('dropIsSwitched', _dropIsSwitched);
    prefs.setBool('manSaleIsSwitched', _manSaleIsSwitched);
    prefs.setBool('womanSaleIsSwitched', _womanSaleIsSwitched);
    prefs.setBool('otherIsSwitched', _otherIsSwitched);
    prefs.setBool('darkModeIsSwitched', _darkModeIsSwitched);
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _dropIsSwitched = prefs.getBool('dropIsSwitched') ?? true;
    _manSaleIsSwitched = prefs.getBool('manSaleIsSwitched') ?? true;
    _womanSaleIsSwitched = prefs.getBool('womanSaleIsSwitched') ?? true;
    _otherIsSwitched = prefs.getBool('otherIsSwitched') ?? true;
    _darkModeIsSwitched = prefs.getBool('darkModeIsSwitched') ?? false;
    notifyListeners();
  }

  Future<void> _updateFCMSubscription(String topic, bool subscribe) async {
    if (subscribe) {
      await FirebaseMessaging.instance.subscribeToTopic(topic);
    } else {
      await FirebaseMessaging.instance.unsubscribeFromTopic(topic);
    }
  }
}
