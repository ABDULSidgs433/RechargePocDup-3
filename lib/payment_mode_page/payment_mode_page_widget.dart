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
import 'payment_mode_page_model.dart';
export 'payment_mode_page_model.dart';

class PaymentModePageWidget extends StatefulWidget {
  const PaymentModePageWidget({
    Key? key,
    this.enteredAmt,
    this.walletIdNo,
    this.vehicleNumber,
    this.bankNaam,
  }) : super(key: key);

  final String? enteredAmt;
  final String? walletIdNo;
  final String? vehicleNumber;
  final String? bankNaam;

  @override
  _PaymentModePageWidgetState createState() => _PaymentModePageWidgetState();
}

class _PaymentModePageWidgetState extends State<PaymentModePageWidget> {
  late PaymentModePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentModePageModel());

    _model.crORdruserNameCtrlController ??= TextEditingController();
    _model.cardNoCtrlController ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.accNoCtrlController ??= TextEditingController();
    _model.reEnterAccNoCtrlController ??= TextEditingController();
    _model.ifscCodeCtrlController ??= TextEditingController();
    _model.recipientNameCtrlController ??= TextEditingController();
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
        title: 'PaymentModePage',
        color: FlutterFlowTheme.of(context).primary,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF025395),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-0.35, 0.0),
              child: Text(
                'Select Payment Modes',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Lato',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5.0,
                                color: Color(0x3416202A),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Total Amount   :',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Lato',
                                          color: Color(0xFF025395),
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.rupeeSign,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 18.0,
                                          ),
                                        ),
                                        Text(
                                          widget.enteredAmt!,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                        Text(
                                          ' /-',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xB0D8D8D8),
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Form(
                            key: _model.formKey2,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'CREDIT/DEBIT/ATM CARD',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Lottie.asset(
                                            'assets/lottie_animations/99865-credit-card.json',
                                            width: 50.0,
                                            height: 30.0,
                                            fit: BoxFit.cover,
                                            animate: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                    collapsed: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .crORdruserNameCtrlController,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.crORdruserNameCtrlController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => setState(() {}),
                                                    ),
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelText: 'Enter Name',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF025395),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF025395),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFD01616),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFD01616),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  20.0,
                                                                  20.0),
                                                      suffixIcon: _model
                                                              .crORdruserNameCtrlController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .crORdruserNameCtrlController
                                                                    ?.clear();
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                color: Color(
                                                                    0xFF757575),
                                                                size: 22.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    textAlign: TextAlign.start,
                                                    validator: _model
                                                        .crORdruserNameCtrlControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cardNoCtrlController,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText:
                                                            'Enter Card Number',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        hintText:
                                                            '2314-5214-5364-5214',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF025395),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF025395),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFFD01616),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFFD01616),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    20.0,
                                                                    20.0,
                                                                    20.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      textAlign:
                                                          TextAlign.start,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .cardNoCtrlControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.cardNoCtrlMask
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController3,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.textController3',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () =>
                                                                setState(() {}),
                                                          ),
                                                          autofocus: true,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .none,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'MM/YY',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF004C8F),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF025395),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFD01616),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFD01616),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            suffixIcon: _model
                                                                    .textController3!
                                                                    .text
                                                                    .isNotEmpty
                                                                ? InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      _model
                                                                          .textController3
                                                                          ?.clear();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .clear,
                                                                      color: Color(
                                                                          0xFF757575),
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  )
                                                                : null,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          textAlign:
                                                              TextAlign.start,
                                                          validator: _model
                                                              .textController3Validator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            _model
                                                                .textFieldMask1
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController4,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.textController4',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () =>
                                                                setState(() {}),
                                                          ),
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'CVV',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      color: Color(
                                                                          0xC9D8D8D8),
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF004C8F),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF025395),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFD01616),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFD01616),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            suffixIcon: _model
                                                                    .textController4!
                                                                    .text
                                                                    .isNotEmpty
                                                                ? InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      _model
                                                                          .textController4
                                                                          ?.clear();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .clear,
                                                                      color: Color(
                                                                          0xFF757575),
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  )
                                                                : null,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          textAlign:
                                                              TextAlign.start,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .textController4Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            if (_model.formKey2
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey2
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            _model.cardPaymentStatusResponse =
                                                                await actions
                                                                    .paymentSuccessOrFailuru(
                                                              functions.removeHyphan(
                                                                  _model
                                                                      .cardNoCtrlController
                                                                      .text),
                                                              FFAppState()
                                                                  .paymentsuccessData
                                                                  .toList(),
                                                              'acc',
                                                              'status',
                                                            );
                                                            _shouldSetState =
                                                                true;
                                                            if (_model
                                                                .cardPaymentStatusResponse!) {
                                                              _model.mappedData =
                                                                  await actions
                                                                      .addTrns(
                                                                _model
                                                                    .crORdruserNameCtrlController
                                                                    .text,
                                                                functions.removeHyphan(
                                                                    _model
                                                                        .cardNoCtrlController
                                                                        .text),
                                                                widget
                                                                    .enteredAmt,
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                          .isVehicle
                                                                      ? 'Vehicle Recharge'
                                                                      : 'Wallet Recharge',
                                                                  'NA',
                                                                ),
                                                                widget.bankNaam,
                                                                true,
                                                                random_data
                                                                    .randomString(
                                                                  10,
                                                                  12,
                                                                  false,
                                                                  false,
                                                                  true,
                                                                ),
                                                                widget
                                                                    .vehicleNumber,
                                                                widget
                                                                    .walletIdNo,
                                                                getCurrentTimestamp,
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              setState(() {
                                                                FFAppState()
                                                                    .addToPaymentTransactions(
                                                                        _model
                                                                            .mappedData!);
                                                              });

                                                              context.pushNamed(
                                                                'successpage',
                                                                queryParams: {
                                                                  'vehicleNumber':
                                                                      serializeParam(
                                                                    widget
                                                                        .vehicleNumber,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'totalAmt':
                                                                      serializeParam(
                                                                    widget
                                                                        .enteredAmt,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'actID':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .Login,
                                                                      r'''$.custid''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'transID':
                                                                      serializeParam(
                                                                    random_data
                                                                        .randomString(
                                                                      12,
                                                                      12,
                                                                      false,
                                                                      false,
                                                                      true,
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'paymentStatusRep':
                                                                      serializeParam(
                                                                    true,
                                                                    ParamType
                                                                        .bool,
                                                                  ),
                                                                  'trTime':
                                                                      serializeParam(
                                                                    getCurrentTimestamp,
                                                                    ParamType
                                                                        .DateTime,
                                                                  ),
                                                                  'walletNumber':
                                                                      serializeParam(
                                                                    widget
                                                                        .walletIdNo,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );

                                                              if (_shouldSetState)
                                                                setState(() {});
                                                              return;
                                                            } else {
                                                              _model.mappedData2 =
                                                                  await actions
                                                                      .addTrns(
                                                                _model
                                                                    .crORdruserNameCtrlController
                                                                    .text,
                                                                _model
                                                                    .cardNoCtrlController
                                                                    .text,
                                                                widget
                                                                    .enteredAmt,
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                          .isVehicle
                                                                      ? 'Vehicle Recharge'
                                                                      : 'Wallet Recharge',
                                                                  'NA',
                                                                ),
                                                                widget.bankNaam,
                                                                false,
                                                                random_data
                                                                    .randomString(
                                                                  10,
                                                                  12,
                                                                  false,
                                                                  false,
                                                                  true,
                                                                ),
                                                                widget
                                                                    .vehicleNumber,
                                                                widget
                                                                    .walletIdNo,
                                                                getCurrentTimestamp,
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              setState(() {
                                                                FFAppState()
                                                                    .addToPaymentTransactions(
                                                                        _model
                                                                            .mappedData2!);
                                                              });

                                                              context.pushNamed(
                                                                'successpage',
                                                                queryParams: {
                                                                  'transID':
                                                                      serializeParam(
                                                                    random_data
                                                                        .randomString(
                                                                      10,
                                                                      12,
                                                                      false,
                                                                      false,
                                                                      true,
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'paymentStatusRep':
                                                                      serializeParam(
                                                                    false,
                                                                    ParamType
                                                                        .bool,
                                                                  ),
                                                                }.withoutNulls,
                                                              );

                                                              if (_shouldSetState)
                                                                setState(() {});
                                                              return;
                                                            }

                                                            if (_shouldSetState)
                                                              setState(() {});
                                                          },
                                                          text:
                                                              'Click to Submit and Pay',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 250.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFF025395),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
                                          10.0, 10.0, 10.0, 10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'UPI',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Lottie.asset(
                                            'assets/lottie_animations/118012-upi-appsjson.json',
                                            width: 50.0,
                                            height: 30.0,
                                            fit: BoxFit.cover,
                                            animate: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                    collapsed: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController5,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Enter your UPI ID',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF025395),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF025395),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD01616),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD01616),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            textAlign: TextAlign.start,
                                            validator: _model
                                                .textController5Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (_model.formKey1
                                                              .currentState ==
                                                          null ||
                                                      !_model.formKey1
                                                          .currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  _model.upiPaymentStatusResponse =
                                                      await actions
                                                          .paymentSuccessOrFailuru(
                                                    _model.textController5.text,
                                                    FFAppState()
                                                        .paymentsuccessData
                                                        .toList(),
                                                    'acc',
                                                    'status',
                                                  );
                                                  _shouldSetState = true;
                                                  if (_model
                                                      .upiPaymentStatusResponse!) {
                                                    _model.upimappedData1 =
                                                        await actions
                                                            .addUpiTransaction(
                                                      _model
                                                          .textController5.text,
                                                      widget.enteredAmt,
                                                      FFAppState().isVehicle
                                                          ? 'Vehicle Recharge'
                                                          : 'Wallet Recharge',
                                                      widget.bankNaam,
                                                      true,
                                                      random_data.randomString(
                                                        10,
                                                        12,
                                                        false,
                                                        false,
                                                        true,
                                                      ),
                                                      widget.vehicleNumber,
                                                      widget.walletIdNo,
                                                      getCurrentTimestamp,
                                                      getJsonField(
                                                        FFAppState().Login,
                                                        r'''$.custid''',
                                                      ).toString(),
                                                    );
                                                    _shouldSetState = true;
                                                    setState(() {
                                                      FFAppState()
                                                          .addToPaymentTransactions(
                                                              _model
                                                                  .upimappedData1!);
                                                    });

                                                    context.pushNamed(
                                                      'successpage',
                                                      queryParams: {
                                                        'vehicleNumber':
                                                            serializeParam(
                                                          widget.vehicleNumber,
                                                          ParamType.String,
                                                        ),
                                                        'totalAmt':
                                                            serializeParam(
                                                          widget.enteredAmt,
                                                          ParamType.String,
                                                        ),
                                                        'actID': serializeParam(
                                                          getJsonField(
                                                            FFAppState().Login,
                                                            r'''$.custid''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'transID':
                                                            serializeParam(
                                                          random_data
                                                              .randomString(
                                                            12,
                                                            12,
                                                            false,
                                                            false,
                                                            true,
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'paymentStatusRep':
                                                            serializeParam(
                                                          true,
                                                          ParamType.bool,
                                                        ),
                                                        'trTime':
                                                            serializeParam(
                                                          getCurrentTimestamp,
                                                          ParamType.DateTime,
                                                        ),
                                                        'walletNumber':
                                                            serializeParam(
                                                          widget.walletIdNo,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    _model.upimappedData2 =
                                                        await actions
                                                            .addUpiTransaction(
                                                      _model
                                                          .textController5.text,
                                                      widget.enteredAmt,
                                                      FFAppState().isVehicle
                                                          ? 'Vehicle Recharge'
                                                          : 'Wallet Recharge',
                                                      widget.bankNaam,
                                                      false,
                                                      random_data.randomString(
                                                        10,
                                                        12,
                                                        false,
                                                        false,
                                                        true,
                                                      ),
                                                      widget.vehicleNumber,
                                                      widget.walletIdNo,
                                                      getCurrentTimestamp,
                                                      getJsonField(
                                                        FFAppState().Login,
                                                        r'''$.custid''',
                                                      ).toString(),
                                                    );
                                                    _shouldSetState = true;
                                                    setState(() {
                                                      FFAppState()
                                                          .addToPaymentTransactions(
                                                              _model
                                                                  .upimappedData2!);
                                                    });

                                                    context.pushNamed(
                                                      'successpage',
                                                      queryParams: {
                                                        'transID':
                                                            serializeParam(
                                                          random_data
                                                              .randomString(
                                                            10,
                                                            12,
                                                            false,
                                                            false,
                                                            true,
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'paymentStatusRep':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                },
                                                text: 'Pay',
                                                options: FFButtonOptions(
                                                  width: 250.0,
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF025395),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 2.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
                                          10.0, 10.0, 10.0, 10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Form(
                            key: _model.formKey3,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Net Banking',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Lottie.asset(
                                            'assets/lottie_animations/53219-bank-to-bank-transfer.json',
                                            width: 200.0,
                                            height: 30.0,
                                            fit: BoxFit.cover,
                                            animate: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                    collapsed: Text(
                                      '',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                    ),
                                    expanded: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.accNoCtrlController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Enter Account Number',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .accNoCtrlControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .reEnterAccNoCtrlController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    're-Enter Account Number',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .reEnterAccNoCtrlControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.ifscCodeCtrlController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'IFSC',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .ifscCodeCtrlControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .recipientNameCtrlController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Recipient Name',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD01616),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .recipientNameCtrlControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 20.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                if (_model.formKey3
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey3.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.accNoCtrlController
                                                        .text ==
                                                    _model
                                                        .reEnterAccNoCtrlController
                                                        .text) {
                                                  _model.netbankRespo =
                                                      await actions
                                                          .paymentSuccessOrFailuru(
                                                    _model.accNoCtrlController
                                                        .text,
                                                    FFAppState()
                                                        .paymentsuccessData
                                                        .toList(),
                                                    'acc',
                                                    'status',
                                                  );
                                                  _shouldSetState = true;
                                                  if (_model.netbankRespo!) {
                                                    context.pushNamed(
                                                      'successpage',
                                                      queryParams: {
                                                        'vehicleNumber':
                                                            serializeParam(
                                                          widget.vehicleNumber,
                                                          ParamType.String,
                                                        ),
                                                        'totalAmt':
                                                            serializeParam(
                                                          widget.enteredAmt,
                                                          ParamType.String,
                                                        ),
                                                        'actID': serializeParam(
                                                          getJsonField(
                                                            FFAppState().Login,
                                                            r'''$.custid''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'transID':
                                                            serializeParam(
                                                          random_data
                                                              .randomString(
                                                            12,
                                                            12,
                                                            false,
                                                            false,
                                                            true,
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'paymentStatusRep':
                                                            serializeParam(
                                                          true,
                                                          ParamType.bool,
                                                        ),
                                                        'trTime':
                                                            serializeParam(
                                                          getCurrentTimestamp,
                                                          ParamType.DateTime,
                                                        ),
                                                        'walletNumber':
                                                            serializeParam(
                                                          widget.walletIdNo,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    context.pushNamed(
                                                      'successpage',
                                                      queryParams: {
                                                        'transID':
                                                            serializeParam(
                                                          random_data
                                                              .randomString(
                                                            10,
                                                            12,
                                                            false,
                                                            false,
                                                            true,
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'paymentStatusRep':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Alert'),
                                                        content: Text(
                                                            'Sorry, your account number doesn\'t matches. '),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              text: 'Confirm &  Pay',
                                              options: FFButtonOptions(
                                                width: 250.0,
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF025395),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
                                          10.0, 10.0, 10.0, 10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
