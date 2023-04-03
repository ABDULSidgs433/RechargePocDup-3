import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PaymentModePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for crORdruserNameCtrl widget.
  TextEditingController? crORdruserNameCtrlController;
  String? Function(BuildContext, String?)?
      crORdruserNameCtrlControllerValidator;
  String? _crORdruserNameCtrlControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cardNoCtrl widget.
  TextEditingController? cardNoCtrlController;
  final cardNoCtrlMask = MaskTextInputFormatter(mask: '####-####-####-####');
  String? Function(BuildContext, String?)? cardNoCtrlControllerValidator;
  String? _cardNoCtrlControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController3;
  final textFieldMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - paymentSuccessOrFailuru] action in Button widget.
  bool? cardPaymentStatusResponse;
  // Stores action output result for [Custom Action - addTrns] action in Button widget.
  dynamic? mappedData;
  // Stores action output result for [Custom Action - addTrns] action in Button widget.
  dynamic? mappedData2;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('[a-zA-Z0-9.\\-_]{2,256}@[a-zA-Z]{2,64}').hasMatch(val)) {
      return 'Invalid UPI Format';
    }
    return null;
  }

  // Stores action output result for [Custom Action - paymentSuccessOrFailuru] action in Button widget.
  bool? upiPaymentStatusResponse;
  // Stores action output result for [Custom Action - addUpiTransaction] action in Button widget.
  dynamic? upimappedData1;
  // Stores action output result for [Custom Action - addUpiTransaction] action in Button widget.
  dynamic? upimappedData2;
  // State field(s) for accNoCtrl widget.
  TextEditingController? accNoCtrlController;
  String? Function(BuildContext, String?)? accNoCtrlControllerValidator;
  String? _accNoCtrlControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for reEnterAccNoCtrl widget.
  TextEditingController? reEnterAccNoCtrlController;
  String? Function(BuildContext, String?)? reEnterAccNoCtrlControllerValidator;
  String? _reEnterAccNoCtrlControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ifscCodeCtrl widget.
  TextEditingController? ifscCodeCtrlController;
  String? Function(BuildContext, String?)? ifscCodeCtrlControllerValidator;
  String? _ifscCodeCtrlControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for recipientNameCtrl widget.
  TextEditingController? recipientNameCtrlController;
  String? Function(BuildContext, String?)? recipientNameCtrlControllerValidator;
  String? _recipientNameCtrlControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - paymentSuccessOrFailuru] action in Button widget.
  bool? netbankRespo;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    crORdruserNameCtrlControllerValidator =
        _crORdruserNameCtrlControllerValidator;
    cardNoCtrlControllerValidator = _cardNoCtrlControllerValidator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    accNoCtrlControllerValidator = _accNoCtrlControllerValidator;
    reEnterAccNoCtrlControllerValidator = _reEnterAccNoCtrlControllerValidator;
    ifscCodeCtrlControllerValidator = _ifscCodeCtrlControllerValidator;
    recipientNameCtrlControllerValidator =
        _recipientNameCtrlControllerValidator;
  }

  void dispose() {
    crORdruserNameCtrlController?.dispose();
    cardNoCtrlController?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    accNoCtrlController?.dispose();
    reEnterAccNoCtrlController?.dispose();
    ifscCodeCtrlController?.dispose();
    recipientNameCtrlController?.dispose();
  }

  /// Additional helper methods are added here.

}
