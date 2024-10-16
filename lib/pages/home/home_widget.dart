import '/components/gain_muscle_card/gain_muscle_card_widget.dart';
import '/components/main_card/main_card_widget.dart';
import '/components/title/title_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(-300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'mainCardOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.5, 1.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'titleOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 700.0.ms,
            duration: 600.0.ms,
            begin: Offset(-300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'gainMuscleCardOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'gainMuscleCardOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 1100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1100.0.ms,
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground2,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select a fitness plan!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                          Text(
                            'All plans are personalized for you.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText2,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ].divide(SizedBox(height: 6.0)),
                      ),
                      wrapWithModel(
                        model: _model.mainCardModel,
                        updateCallback: () => safeSetState(() {}),
                        child: MainCardWidget(),
                      ).animateOnPageLoad(
                          animationsMap['mainCardOnPageLoadAnimation']!),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.titleModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleWidget(
                        title: 'Gain muscle',
                        subtitle:
                            'Focus on muscle tone and strength with plans\ncomposed mostly of low-repetition strength training.',
                      ),
                    ).animateOnPageLoad(
                        animationsMap['titleOnPageLoadAnimation']!),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.gainMuscleCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/qn2ndekxnv52/i3.jpg',
                              weeks: '5 weeks',
                              title: 'Muscle & Strength',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'gainMuscleCardOnPageLoadAnimation1']!),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/aycyc9ramfls/i7.jpg',
                              weeks: '12 weeks',
                              title: 'Split Body Gainer',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).accent1,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ).animateOnPageLoad(animationsMap[
                              'gainMuscleCardOnPageLoadAnimation2']!),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/pqeerhhpegqn/i26.jpg',
                              weeks: '12 weeks',
                              title: 'Explosive Tone Up',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/1rm7756gou09/i4.jpg',
                              weeks: '5 weeks',
                              title: 'Muscle Shredder',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).accent1,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/ol3qdcay6qeq/i5.jpg',
                              weeks: '12 weeks',
                              title: 'Fit & Strong',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).accent1,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/shrjd37asd8f/i14.jpg',
                              weeks: '12 weeks',
                              title: 'Men\'s Body Special',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 16.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.titleModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleWidget(
                        title: 'Get fitter',
                        subtitle:
                            'Training plans designed to improve or maintain your\nphysical condition.',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.gainMuscleCardModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/lxx58vq4kyyd/i6.jpg',
                              weeks: '5 weeks',
                              title: 'Fit Life Starter',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/dgwcny1wcldw/i21.jpg',
                              weeks: '12 weeks',
                              title: 'Full Stack Fitness',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/v4sdlwixau6c/i9.jpg',
                              weeks: '12 weeks',
                              title: 'Endurance Builder',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).accent1,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel10,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/80pejtagh060/i22.jpg',
                              weeks: '12 weeks',
                              title: 'Fit & Strong',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).accent1,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel11,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/9ldnumlwcuud/i12.jpg',
                              weeks: '7 weeks',
                              title: 'Just Stay Fit',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel12,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/7n5l3dko5270/i17.jpg',
                              weeks: '12 weeks',
                              title: 'Balanced Fat Loss',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 16.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.titleModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleWidget(
                        title: 'Lose fat',
                        subtitle:
                            'You need to get your heart rate up to burn calories, and that\'s what these plans are for.',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.gainMuscleCardModel13,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/x7xwsysn6nm1/i24.jpg',
                              weeks: '5 weeks',
                              title: 'Weight Lose Starter',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel14,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/c5obgr8aggip/i8.jpg',
                              weeks: '12 weeks',
                              title: 'Cardio Burner',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).accent1,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel15,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/57hybl2gz0c6/i20.jpg',
                              weeks: '12 weeks',
                              title: 'Balanced Fat Loss',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel16,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/3dixpdexdbrp/i18.jpg',
                              weeks: '5 weeks',
                              title: 'Muscle Shredder',
                              color1: FlutterFlowTheme.of(context).bgColor,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).accent1,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel17,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/julcjrvffn6x/i19.jpg',
                              weeks: '12 weeks',
                              title: 'Endurance Builder',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).bgColor,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).accent1,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.gainMuscleCardModel18,
                            updateCallback: () => safeSetState(() {}),
                            child: GainMuscleCardWidget(
                              cover:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fiti-plus-qvr2h3/assets/4m47ip6o5jus/i27.jpg',
                              weeks: '5 weeks',
                              title: 'Men\'s Body Special',
                              color1: FlutterFlowTheme.of(context).accent1,
                              color2: FlutterFlowTheme.of(context).accent1,
                              color3: FlutterFlowTheme.of(context).bgColor,
                              color4: FlutterFlowTheme.of(context).bgColor,
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 16.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ].divide(SizedBox(height: 32.0)).addToEnd(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
