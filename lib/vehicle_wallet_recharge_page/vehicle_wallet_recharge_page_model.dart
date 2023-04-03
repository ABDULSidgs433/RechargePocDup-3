import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VehicleWalletRechargePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vehicleCtrl widget.
  TextEditingController? vehicleCtrlController;
  String? Function(BuildContext, String?)? vehicleCtrlControllerValidator;
  String? _vehicleCtrlControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for WalletDropdown widget.
  String? walletDropdownValue;
  FormFieldController<String>? walletDropdownController;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  // Stores action output result for [Custom Action - activeVehicleNumbers] action in Button widget.
  dynamic? vehicleDetails;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    vehicleCtrlControllerValidator = _vehicleCtrlControllerValidator;
    textController2Validator = _textController2Validator;
  }

  void dispose() {
    vehicleCtrlController?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods are added here.

}
