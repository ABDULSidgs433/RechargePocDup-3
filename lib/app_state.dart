import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isVehicle = true;
  bool get isVehicle => _isVehicle;
  set isVehicle(bool _value) {
    _isVehicle = _value;
  }

  List<String> _VehicleNo = [
    'TS11AB1234',
    'TS11AB5678',
    'TS11AB9012',
    'TS11AB3456'
  ];
  List<String> get VehicleNo => _VehicleNo;
  set VehicleNo(List<String> _value) {
    _VehicleNo = _value;
  }

  void addToVehicleNo(String _value) {
    _VehicleNo.add(_value);
  }

  void removeFromVehicleNo(String _value) {
    _VehicleNo.remove(_value);
  }

  void removeAtIndexFromVehicleNo(int _index) {
    _VehicleNo.removeAt(_index);
  }

  List<dynamic> _BankNames = [
    jsonDecode(
        '{\"acno\":\"10000123500001\",\"name\":\"HDFC Bank\",\"img\":\"https://e7.pngegg.com/pngimages/748/512/png-clipart-hdfc-logo-bank-logos.png\",\"status\":\"Active\",\"acctype\":\"saving\"}'),
    jsonDecode(
        '{\"acno\":\"10000123500002\",\"name\":\"HDFC Bank\",\"img\":\"https://w7.pngwing.com/pngs/709/435/png-transparent-icici-bank-logo-horizontal-bank-logos.png\",\"status\":\"Active\",\"acctype\":\"salary\"}'),
    jsonDecode(
        '{\"acno\":\"10000123500003\",\"name\":\"HDFC Bank\",\"img\":\"https://www.pngfind.com/pngs/m/682-6829846_axis-bank-logo-vector-hd-png-download.png\",\"status\":\"Inactive\",\"acctype\":\"blocked\"}'),
    jsonDecode(
        '{\"acno\":\"10000123500004\",\"name\":\"HDFC Bank\",\"img\":\"https://w7.pngwing.com/pngs/653/503/png-transparent-canara-bank-logo-bilingual-bank-logos.png\",\"status\":\"Active\",\"acctype\":\"current\"}'),
    jsonDecode(
        '{\"acno\":\"10000123500005\",\"name\":\"HDFC Bank\",\"img\":\"https://hindubabynames.info/downloads/wp-content/themes/hbn_download/download/banking-and-finance/indian-bank-logo.png\",\"status\":\"Inactive\",\"acctype\":\"dormant\"}')
  ];
  List<dynamic> get BankNames => _BankNames;
  set BankNames(List<dynamic> _value) {
    _BankNames = _value;
  }

  void addToBankNames(dynamic _value) {
    _BankNames.add(_value);
  }

  void removeFromBankNames(dynamic _value) {
    _BankNames.remove(_value);
  }

  void removeAtIndexFromBankNames(int _index) {
    _BankNames.removeAt(_index);
  }

  List<dynamic> _WalletId = [
    jsonDecode(
        '{\"id\":\"17945612784512\",\"status\":\"Active\",\"vehicleno\":\"TS11AB1234\"}'),
    jsonDecode(
        '{\"id\":\"17529637963852\",\"status\":\"Active\",\"vehicleno\":\"TS11AB1122\"}'),
    jsonDecode(
        '{\"id\":\"17539514123456\",\"status\":\"Active\",\"vehicleno\":\"TS11AB5678\"}'),
    jsonDecode(
        '{\"id\":\"17874512789456\",\"status\":\"Active\",\"vehicleno\":\"TS11AB3344\"}'),
    jsonDecode(
        '{\"id\":\"17874512789456\",\"status\":\"Inactive\",\"vehicleno\":\"TS11AB5678\"}'),
    jsonDecode(
        '{\"id\":\"17874512789456\",\"status\":\"Inactive\",\"vehicleno\":\"TS11AB1234\"}')
  ];
  List<dynamic> get WalletId => _WalletId;
  set WalletId(List<dynamic> _value) {
    _WalletId = _value;
  }

  void addToWalletId(dynamic _value) {
    _WalletId.add(_value);
  }

  void removeFromWalletId(dynamic _value) {
    _WalletId.remove(_value);
  }

  void removeAtIndexFromWalletId(int _index) {
    _WalletId.removeAt(_index);
  }

  dynamic _Login = jsonDecode(
      '{\"custid\":\"123456\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}');
  dynamic get Login => _Login;
  set Login(dynamic _value) {
    _Login = _value;
  }

  List<dynamic> _paymentsuccessData = [
    jsonDecode('{\"acc\":\"1234123412341234\",\"status\":\"active\"}'),
    jsonDecode('{\"acc\":\"9987654321@hdfc\",\"status\":\"active\"}')
  ];
  List<dynamic> get paymentsuccessData => _paymentsuccessData;
  set paymentsuccessData(List<dynamic> _value) {
    _paymentsuccessData = _value;
  }

  void addToPaymentsuccessData(dynamic _value) {
    _paymentsuccessData.add(_value);
  }

  void removeFromPaymentsuccessData(dynamic _value) {
    _paymentsuccessData.remove(_value);
  }

  void removeAtIndexFromPaymentsuccessData(int _index) {
    _paymentsuccessData.removeAt(_index);
  }

  List<dynamic> _paymentTransactions = [];
  List<dynamic> get paymentTransactions => _paymentTransactions;
  set paymentTransactions(List<dynamic> _value) {
    _paymentTransactions = _value;
  }

  void addToPaymentTransactions(dynamic _value) {
    _paymentTransactions.add(_value);
  }

  void removeFromPaymentTransactions(dynamic _value) {
    _paymentTransactions.remove(_value);
  }

  void removeAtIndexFromPaymentTransactions(int _index) {
    _paymentTransactions.removeAt(_index);
  }

  String _authOtp = '';
  String get authOtp => _authOtp;
  set authOtp(String _value) {
    _authOtp = _value;
  }

  List<dynamic> _MultipleLoginIds = [
    jsonDecode(
        '{\"custid\":\"customer1\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}'),
    jsonDecode(
        '{\"custid\":\"customer2\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}'),
    jsonDecode(
        '{\"custid\":\"customer3\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}'),
    jsonDecode(
        '{\"custid\":\"customer4\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}'),
    jsonDecode(
        '{\"custid\":\"customer5\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}'),
    jsonDecode(
        '{\"custid\":\"customer6\",\"pswd\":\"123456\",\"custname\":\"Johnsmith\"}')
  ];
  List<dynamic> get MultipleLoginIds => _MultipleLoginIds;
  set MultipleLoginIds(List<dynamic> _value) {
    _MultipleLoginIds = _value;
  }

  void addToMultipleLoginIds(dynamic _value) {
    _MultipleLoginIds.add(_value);
  }

  void removeFromMultipleLoginIds(dynamic _value) {
    _MultipleLoginIds.remove(_value);
  }

  void removeAtIndexFromMultipleLoginIds(int _index) {
    _MultipleLoginIds.removeAt(_index);
  }

  String _LoggedInCustomer = '';
  String get LoggedInCustomer => _LoggedInCustomer;
  set LoggedInCustomer(String _value) {
    _LoggedInCustomer = _value;
  }

  String _resendclicked = 'false';
  String get resendclicked => _resendclicked;
  set resendclicked(String _value) {
    _resendclicked = _value;
  }

  bool _isResendOTP = false;
  bool get isResendOTP => _isResendOTP;
  set isResendOTP(bool _value) {
    _isResendOTP = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
