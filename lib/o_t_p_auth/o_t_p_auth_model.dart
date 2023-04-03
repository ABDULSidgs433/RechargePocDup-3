import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OTPAuthModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for OtpCtrl widget.
  TextEditingController? otpCtrl;
  // State field(s) for MyTimer widget.
  int myTimerMilliseconds = 10000;
  String myTimerValue =
      StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer myTimerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    otpCtrl = TextEditingController();
  }

  void dispose() {
    otpCtrl?.dispose();
    myTimerController.dispose();
  }

  /// Additional helper methods are added here.

}
