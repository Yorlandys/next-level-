import '/components/habits_card/habits_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'hear_fitify_model.dart';
export 'hear_fitify_model.dart';

class HearFitifyWidget extends StatefulWidget {
  const HearFitifyWidget({super.key});

  @override
  State<HearFitifyWidget> createState() => _HearFitifyWidgetState();
}

class _HearFitifyWidgetState extends State<HearFitifyWidget>
    with TickerProviderStateMixin {
  late HearFitifyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HearFitifyModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Container(
                                  width: 34.0,
                                  height: 34.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      FFIcons.kchevronLeft,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                              CircularPercentIndicator(
                                percent: 0.99,
                                radius: 15.0,
                                lineWidth: 4.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).border50,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How did you hear about Fitiplus?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.3,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                              ].divide(SizedBox(height: 6.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.habitsCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Google play',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'TV',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Radio or podcast',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Friends or family',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Facebook',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Instagram',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Google search',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'YouTube',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Tiktok',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.habitsCardModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HabitsCardWidget(
                                    title: 'Other',
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ]
                            .addToStart(SizedBox(height: 24.0))
                            .addToEnd(SizedBox(height: 80.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'CreatingPlan',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );
                    },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
