import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'AuthProvider/AuthenticationService.dart';

class SharedPreferencesProvider with ChangeNotifier {
  setPhonePreference({String phone}) async {
    // set the phone number in the local memory;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("PHONE", phone.toString());
  }

  checkPhonePreference({BuildContext context}) async {
    // checks the phone number in phone memory if there is no phone number logout;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool yesOrNo = sharedPreferences.containsKey("PHONE");
    if (yesOrNo == false) {
      context.read<AuthenticationService>().signOut();
    }
  }

  getPhonePreference() async {
    // gets the phone number from phone memory;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("PHONE");
  }
}
