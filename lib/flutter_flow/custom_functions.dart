import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

List<String>? walletidStringConverter(
  List<dynamic> jsonData,
  String? passParameter,
  String? loggedinCustomer,
) {
  List<String>? ids = [];
  if (!((loggedinCustomer == "customer2") ||
      (loggedinCustomer == "customer3"))) {
    List<String> collectingData = jsonData
        .where((e) => e['status'] == 'Active')
        .toList()
        .map((e) => e['id'] as String)
        .toList();
    ids = collectingData;
  }
  return ids;
}

bool? vehicleNumbeValidation(
  String vehicleState,
  List<dynamic> vehicleList,
) {
  var filterVehicle = vehicleList
      .where((element) => element['vehicleno']
          .toString()
          .toLowerCase()
          .contains("${vehicleState.toLowerCase()}"))
      .toList();

  return filterVehicle.length > 0;

  // bool isValid = vehicleList
  //     .toString()
  //     .toLowerCase()
  //     .contains("${vehicleState.toLowerCase()}");
  // return isValid;
}

bool? walletidValidation(
  List<dynamic> walletJsonData,
  String? walletisState,
) {
  bool isValidWalletid = false;

  for (var wallet in walletJsonData) {
    if (wallet['id']
        .toString()
        .toLowerCase()
        .contains(walletisState.toString().toLowerCase())) {
      if (wallet['status'] == 'Active') isValidWalletid = true;
    }
  }

  return isValidWalletid;
}

String? removeHyphan(String? strVal) {
  return strVal!.replaceAll('-', '');
}

List<String> activeAccounts(
  List<dynamic> bankNamesJsonListData,
  String? loggedinusername,
) {
  List<String> activeAccs = [];
  if ((loggedinusername == "customer5") || (loggedinusername == "customer6")) {
    activeAccs = bankNamesJsonListData
        .where(((e) => e["status"] == "Active"))
        .toList()
        .map(((e) => e['acno'] as String))
        .toList();
  }
  return activeAccs;
}

bool? rechargeAmountValidation(int? amount) {
  if (amount! > 0 && amount < 20000)
    return true;
  else
    return false;
}

bool? checkPinCodeEntered(String? pincode) {
  int pinLength = pincode!.length;
  if (pinLength < 6)
    return true;
  else
    return false;
}

bool? validateLoggedin(
  String? username,
  String? password,
  List<dynamic> totalUsers,
) {
  var result = totalUsers.where((item) => item["custid"] == username);

  if (result.isNotEmpty) {
    var pwd = result.firstWhere((item) => item.containsKey("pswd"))["pswd"];
    if (pwd == password) return true;
  }
  return false;
}

bool? checktimer(
  String? timervalue,
  String? resetclicked,
) {
  // if (timervalue == "00:00:00" && resetclicked == "false") {
  //   return true;
  // }
  // if (timervalue == "00:00:04" && resetclicked == "true") {
  //   return true;
  // }
  if (resetclicked == "true") {
    return true;
  }
  return false;
}
