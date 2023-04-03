// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> paymentSuccessOrFailuru(
  String? widgetStateValue,
  List<dynamic> jsonListData,
  String? accVal,
  String? statusVal,
) async {
  // Add your function code here!
  bool isValidWalletid = false;

  for (var wallet in jsonListData) {
    if (wallet['$accVal']
        .toString()
        .toLowerCase()
        .contains(widgetStateValue.toString().toLowerCase())) {
      if (wallet['$statusVal'] == 'active') isValidWalletid = true;
    }
  }

  return isValidWalletid;
}
