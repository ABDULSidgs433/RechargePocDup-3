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
import 'o_t_p_auth_model.dart';
export 'o_t_p_auth_model.dart';

class OTPAuthWidget extends StatefulWidget {
  const OTPAuthWidget({
    Key? key,
    this.enteredAmt,
    this.vehicleNumber,
    this.walletidval,
    this.accountId,
    this.vehicleMappedWalletID,
    bool? buttonVisible,
  })  : this.buttonVisible = buttonVisible ?? true,
        super(key: key);

  final String? enteredAmt;
  final String? vehicleNumber;
  final String? walletidval;
  final String? accountId;
  final String? vehicleMappedWalletID;
  final bool buttonVisible;

  @override
  _OTPAuthWidgetState createState() => _OTPAuthWidgetState();
}

class _OTPAuthWidgetState extends State<OTPAuthWidget> {
  late OTPAuthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPAuthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.myTimerController.onExecute.add(StopWatchExecute.start);
      setState(() {
        FFAppState().isResendOTP = false;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'OTPAuth',
        color: FlutterFlowTheme.of(context).primary,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF025395),
            automaticallyImplyLeading: false,
            title: Text(
              'Payment Authentication',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Confirm your OTP ',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              44.0, 10.0, 44.0, 0.0),
                          child: Text(
                            'This code helps to keep your account safe and secure.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: Color(0x6FD0D0D0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    '${FFAppState().authOtp}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .black600,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 10.0),
                                  child: Text(
                                    'The above number is your OTP for your requested service for HDFC FASTag',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Text(
                                  FFAppState().resendclicked,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 40.0, 10.0, 0.0),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 6,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Lato',
                                  fontSize: 15.0,
                                ),
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            enableActiveFill: false,
                            autoFocus: true,
                            showCursor: true,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            obscureText: true,
                            obscuringCharacter: '*',
                            hintCharacter: '-',
                            pinTheme: PinTheme(
                              fieldHeight: 45.0,
                              fieldWidth: 45.0,
                              borderWidth: 2.0,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: PinCodeFieldShape.box,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              inactiveColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              selectedColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              activeFillColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveFillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              selectedFillColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            controller: _model.otpCtrl,
                            onChanged: (_) => {},
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowTimer(
                                initialTime: _model.myTimerMilliseconds,
                                getDisplayTime: (value) =>
                                    StopWatchTimer.getDisplayTime(value,
                                        milliSecond: false),
                                timer: _model.myTimerController,
                                updateStateInterval:
                                    Duration(milliseconds: 1000),
                                onChanged: (value, displayTime, shouldUpdate) {
                                  _model.myTimerMilliseconds = value;
                                  _model.myTimerValue = displayTime;
                                  if (shouldUpdate) setState(() {});
                                },
                                onEnded: () async {
                                  await Future.delayed(
                                      const Duration(milliseconds: 1000));
                                  if ((_model.myTimerMilliseconds == 0) &&
                                          (_model.myTimerValue == '00:00:00')
                                      ? true
                                      : false) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'timed out',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0x00000000),
                                      ),
                                    );
                                  }
                                },
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Color(0xFF025395),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  _model.myTimerController.onExecute
                                      .add(StopWatchExecute.reset);

                                  setState(() {
                                    FFAppState().authOtp =
                                        random_data.randomString(
                                      6,
                                      6,
                                      false,
                                      false,
                                      true,
                                    );
                                  });
                                  _model.myTimerController.onExecute
                                      .add(StopWatchExecute.start);
                                  await Future.delayed(
                                      const Duration(milliseconds: 2000));
                                  setState(() {
                                    FFAppState().isResendOTP = true;
                                  });
                                },
                                child: Text(
                                  'Resend OTP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFF025395),
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 44.0),
                          child: FFButtonWidget(
                            onPressed: functions.checkPinCodeEntered(
                                        valueOrDefault<String>(
                                      _model.otpCtrl!.text,
                                      '0',
                                    ))! ||
                                    (_model.myTimerValue == '00:00:00')
                                ? null
                                : () async {
                                    if (_model.otpCtrl!.text ==
                                        FFAppState().authOtp) {
                                      await actions.dismissKeyBoard(
                                        context,
                                      );

                                      context.pushNamed(
                                        'successpage',
                                        queryParams: {
                                          'vehicleNumber': serializeParam(
                                            widget.vehicleNumber,
                                            ParamType.String,
                                          ),
                                          'totalAmt': serializeParam(
                                            widget.enteredAmt,
                                            ParamType.String,
                                          ),
                                          'actID': serializeParam(
                                            widget.accountId,
                                            ParamType.String,
                                          ),
                                          'transID': serializeParam(
                                            random_data.randomString(
                                              12,
                                              12,
                                              false,
                                              false,
                                              true,
                                            ),
                                            ParamType.String,
                                          ),
                                          'paymentStatusRep': serializeParam(
                                            true,
                                            ParamType.bool,
                                          ),
                                          'trTime': serializeParam(
                                            getCurrentTimestamp,
                                            ParamType.DateTime,
                                          ),
                                          'walletNumber': serializeParam(
                                            widget.walletidval,
                                            ParamType.String,
                                          ),
                                          'vehicleMappedWalletID':
                                              serializeParam(
                                            widget.vehicleMappedWalletID,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    } else {
                                      await actions.dismissKeyBoard(
                                        context,
                                      );

                                      context.pushNamed(
                                        'successpage',
                                        queryParams: {
                                          'vehicleNumber': serializeParam(
                                            widget.vehicleNumber,
                                            ParamType.String,
                                          ),
                                          'totalAmt': serializeParam(
                                            widget.enteredAmt,
                                            ParamType.String,
                                          ),
                                          'actID': serializeParam(
                                            widget.accountId,
                                            ParamType.String,
                                          ),
                                          'transID': serializeParam(
                                            random_data.randomString(
                                              12,
                                              12,
                                              false,
                                              false,
                                              true,
                                            ),
                                            ParamType.String,
                                          ),
                                          'paymentStatusRep': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                          'trTime': serializeParam(
                                            getCurrentTimestamp,
                                            ParamType.DateTime,
                                          ),
                                          'walletNumber': serializeParam(
                                            widget.walletidval,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    }

                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                  },
                            text: 'Confirm & Pay',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF025395),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lato',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
