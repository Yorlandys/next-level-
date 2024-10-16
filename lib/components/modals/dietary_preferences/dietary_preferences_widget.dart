import '/components/custom_button/custom_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dietary_preferences_model.dart';
export 'dietary_preferences_model.dart';

class DietaryPreferencesWidget extends StatefulWidget {
  const DietaryPreferencesWidget({super.key});

  @override
  State<DietaryPreferencesWidget> createState() =>
      _DietaryPreferencesWidgetState();
}

class _DietaryPreferencesWidgetState extends State<DietaryPreferencesWidget>
    with TickerProviderStateMixin {
  late DietaryPreferencesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DietaryPreferencesModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 320.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground2,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Text(
                  'Dietary Preferences',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.duration = 'Short';
                      safeSetState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'None',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    _model.duration == 'Short'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  ),
                                  valueOrDefault<Color>(
                                    _model.duration == 'Short'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: valueOrDefault<Color>(
                                  _model.duration == 'Short'
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).bgColor,
                                  FlutterFlowTheme.of(context).bgColor,
                                ),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                FFIcons.kcheck,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground2,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.duration = 'Medium';
                      safeSetState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vegetarian',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    _model.duration == 'Medium'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  ),
                                  valueOrDefault<Color>(
                                    _model.duration == 'Medium'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: valueOrDefault<Color>(
                                  _model.duration == 'Medium'
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).bgColor,
                                  FlutterFlowTheme.of(context).bgColor,
                                ),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                FFIcons.kcheck,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground2,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.duration = 'Long';
                      safeSetState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vegan',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    _model.duration == 'Long'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  ),
                                  valueOrDefault<Color>(
                                    _model.duration == 'Long'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: valueOrDefault<Color>(
                                  _model.duration == 'Long'
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).bgColor,
                                  FlutterFlowTheme.of(context).bgColor,
                                ),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                FFIcons.kcheck,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground2,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.duration = 'Pescetarian';
                      safeSetState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pescetarian',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  valueOrDefault<Color>(
                                    _model.duration == 'Pescetarian'
                                        ? FlutterFlowTheme.of(context).primary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  ),
                                  valueOrDefault<Color>(
                                    _model.duration == 'Pescetarian'
                                        ? FlutterFlowTheme.of(context).secondary
                                        : Colors.transparent,
                                    Colors.transparent,
                                  )
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: valueOrDefault<Color>(
                                  _model.duration == 'Pescetarian'
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).bgColor,
                                  FlutterFlowTheme.of(context).bgColor,
                                ),
                                width: 0.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                FFIcons.kcheck,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground2,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 26.0)),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.customButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomButtonWidget(
                    title: 'Done',
                  ),
                ),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
