// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> addNetBankingTransaction(
  String? acNo,
  String? ifscCode,
  String? recepientName,
  String? amt,
  String? rechargeType,
  String? bankName,
  bool? paymentStatus,
  String? trReferenceId,
  String? vehicleNo,
  String? walletId,
  String? custId,
  DateTime? regTime,
) async {
  // Add your function code here!
  var timeFormatter = DateFormat('dd-MM-yyyy hh:mm: a').format(regTime!);
  var collectedData = {
    "acno": "$acNo",
    "ifsccode": "$ifscCode",
    "recipientname": "$recepientName",
    "enteredamount": "$amt",
    "rechargetype": "$rechargeType",
    "bankname": "$bankName",
    "paymentstatus": paymentStatus,
    "trrefid": "trReferenceId",
    "vehicleno": "$vehicleNo",
    "walletid": "$walletId",
    "custid": "$custId",
    "paymenttype": "NetBanking",
    "regtime": "$timeFormatter"
  };
  return collectedData;
}
