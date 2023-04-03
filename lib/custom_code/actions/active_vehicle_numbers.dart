// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> activeVehicleNumbers(
  String? vehicleCtrlVal,
  List<dynamic> vehicleListData,
) async {
  // Add your function code here!
  List fileterVehicle = vehicleListData
      .where((e) => e['status'] == 'Active')
      .toList()
      .where((e) => e['vehicleno']
          .toString()
          .toLowerCase()
          .contains(vehicleCtrlVal.toString().toLowerCase()))
      .toList();

  return fileterVehicle[0];
}
