// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> addUpiTransaction(
  String? upiId,
  String? amt,
  String? rechargeType,
  String? bankName,
  bool? paymentStatus,
  String? trReferenceId,
  String? vehicleNo,
  String? walletId,
  DateTime? regTime,
  String? custId,
) async {
  // Add your function code here!
  var timeFormatter = DateFormat('dd-MM-yyyy hh:mm: a').format(regTime!);
  var collectedData = {
    "upiid": upiId,
    "enteredamount": "$amt",
    "rechargetype": "$rechargeType",
    "bankname": "$bankName",
    "paymentstatus": paymentStatus,
    "trrefid": "trReferenceId",
    "vehicleno": "$vehicleNo",
    "walletid": "$walletId",
    "regtime": "$timeFormatter",
    'customerid': "$custId",
    'paymenttype': "Upi"
  };

  return collectedData;
}
